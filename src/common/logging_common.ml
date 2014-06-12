type log_level =
	| Error
	| Warn
	| Info
	| Debug
	| Trace

let ord lvl =
	match lvl with
	| Error -> 50
	| Warn  -> 40
	| Info  -> 30
	| Debug -> 20
	| Trace -> 10

let string_of_level lvl =
	match lvl with
	| Error -> "ERROR"
	| Warn  -> "WARNING"
	| Info  -> "INFO"
	| Debug -> "DEBUG"
	| Trace -> "TRACE"

let default_formatter name lvl =
	( "[" ^ (string_of_level lvl) ^ ":" ^ name ^ "] ", "")

let current_formatter = ref default_formatter

let current_level = ref (ord Debug)

let logf = fun name lvl ->
	if (ord lvl) >= !current_level then (
		let dest = IFDEF JS THEN if (ord lvl) > (ord Info) then stderr else stdout ELSE stderr END in
		let (pre, post) = !current_formatter name lvl in
		let print_post = fun _ -> output_string dest post; output_char dest '\n'; flush dest in
		output_string dest pre;
		Printf.kfprintf print_post dest
	) else
		Printf.ifprintf stderr

