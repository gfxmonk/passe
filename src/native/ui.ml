open Common
open Lwt
open Lwt_react
open LTerm_style

let log = Logging.get_logger "ui"

class password_prompt term text = object(self)
	inherit LTerm_read_line.read_password () as super
	inherit [Zed_utf8.t] LTerm_read_line.term term
	initializer
		self#set_prompt (S.const (LTerm_text.of_string text))
end

class plain_prompt term text = object(self)
	inherit LTerm_read_line.read_line () as super
	inherit [Zed_utf8.t] LTerm_read_line.term term

	method show_box = false

	initializer
		self#set_prompt (S.const (LTerm_text.of_string text))
end

let copy_to_clipboard text =
	match_lwt Lwt_process.with_process_out ("", [|"pyperclip"; "-i"|]) (fun proc ->
		lwt () = Lwt_io.write proc#stdin text in
		proc#close
	) with
	| Unix.WEXITED 0 -> return_true
	| _ -> return_false

let output_password ~use_clipboard ~term ~quiet ~domain text =
	lwt () = LTerm.flush term in

	lwt copied = if use_clipboard then copy_to_clipboard text else return false in
	if copied then (
		if quiet then return_unit else
			LTerm.fprintlf term "  (copied to clipboard)"
	) else (
		lwt () =
			if quiet then return_unit else
				LTerm.fprintf term "  Generated password for %s:\n  " domain
		in
		LTerm.printl text
	)

let main ~domain ~length ~quiet ~use_clipboard () =
	lwt term = Lazy.force LTerm.stderr in
	Logging.current_writer := (fun dest str -> Lwt_main.run (LTerm.fprint term str));
	try_lwt
		lwt domain = match domain with
			| Some d -> return d
			| None -> (new plain_prompt term "Domain: ")#run
		in
		lwt domain_text = (Domain.guess domain) in
		let domain = { Store.default domain_text with Store.length = length } in
		lwt password = (new password_prompt term ("["^domain_text ^ "] password: "))#run in
		let generated = Password.generate ~domain password in
		output_password ~use_clipboard ~quiet ~term ~domain:domain_text generated

	with
		| LTerm_read_line.Interrupt
		| Sys.Break -> exit 1
	finally
		LTerm.flush term

let sync_ui sync =
	lwt term = Lazy.force LTerm.stderr in
	lwt user = (new plain_prompt term "Username: ")#run in
	lwt password = (new password_prompt term "Password: ")#run in
	lwt auth = Client_auth.login ~user ~password in
	let open Either in
	lwt () = match auth with
		| Left err -> raise (AssertionError err)
		| Right creds ->
			lwt () = sync.Sync.run_sync creds in
			log#info "Sync completed successfully";
			return_unit
	in
	Lwt.return ()
