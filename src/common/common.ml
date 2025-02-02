type ('a, 'err) result = ('a, 'err) Pervasives.result

let pp_strf pp obj = Format.asprintf "%a" pp obj

module R = struct
	include Rresult.R
	let bindr f r = bind r f
	let recover : ('e -> 'a) -> ('a, 'e) result -> 'a = fun fn -> function
		| Ok v -> v
		| Error e -> fn e

	let bind_error : ('b -> ('a, 'c) result) -> ('a, 'b) result -> ('a, 'c) result = fun fn -> function
		| Ok v -> Ok v
		| Error e -> fn e

	let assert_ok pp =
		function Ok x -> x | Error e -> Error.failwith (`Invalid (pp_strf pp e))

	let fold ok err = function
		| Ok x -> ok x
		| Error x -> err x
	
	let sequence : 'a 'err. ('a, 'err) t list -> ('a list, 'err) t = fun results ->
		let rec loop_rev acc = function
			| [] -> Ok acc
			| Ok elem :: tail -> loop_rev (elem :: acc) tail
			| Error e :: _ -> Error e
		in
		loop_rev [] results |> map List.rev

	let on_error (type a)(type err)
		: (err -> unit) -> (a, err) result -> (a, err) result =
		fun fn r -> reword_error (fun e -> fn e; e) r

	let flatten (type a)(type err)
		: ((a, err) result, err) result -> (a, err) result = function
			| Ok (Ok _ as ok) -> ok
			| Ok (Error _ as error) -> error
			| Error _ as error -> error
end

module Lwt = struct
	include Lwt
	let bindr f x = bind x f
end

module StringMap = struct
	include Map.Make(String)
	let from_pairs pairs = List.fold_left (fun map (k,v) -> add k v map) empty pairs
end

module List = struct
	include List
	let take n l =
		let rec _take rev_results n l =
			if n <= 0 then List.rev rev_results else match l with
				| [] -> List.rev rev_results
				| head::tail -> _take (head::rev_results) (n-1) tail
		in
		_take [] n l

	let filter_map fn l =
		List.fold_right (fun item acc ->
			match fn item with
				| None -> acc
				| Some item -> item :: acc
		) l []

	let rec any pred = function
		| [] -> false
		| x::xs -> if pred x then true else any pred xs
end

let startswith big sml = String.sub big 0 (String.length sml) = sml

let find_safe fn l = try Some (List.find fn l) with Not_found -> None

let (%) f g = (fun x -> f (g x))

let finally_do cleanup resource f =
	let result =
		try f resource
		with ex -> cleanup resource; raise ex in
	let () = cleanup resource in
	result

let print_string () s = s

let identity x = x

let quote_string s = "\"" ^ String.escaped s ^ "\""

let mask_string s = String.make (String.length s) '*'

module type Monad = sig
	type 'a t
	val bind : ('a -> 'b t) -> 'a t -> 'b t
	val map : ('a -> 'b) -> 'a t -> 'b t
	val return : 'a -> 'a t
end

module ResultT(M:Monad) = struct
	type ('a, 'err) t = ('a, 'err) result M.t

	let bind (type a) (type b) (type err) : (a -> (b, err) result M.t) -> (a, err) result M.t -> (b, err) result M.t =
		fun f r -> r |> M.bind (function
			| Ok v -> f v
			| Error e -> M.return (Error e)
		)

	let map (type a)(type b)(type err): (a -> b) -> (a, err) result M.t -> (b, err) result M.t =
		fun f r -> M.map (R.map f) r

	let bindM (type a)(type b)(type err): (a -> b M.t) -> (a, err) result M.t -> (b, err) result M.t =
		fun f r -> r |> M.bind (function
			| Ok v -> f v |> M.map R.ok
			| Error _ as e -> M.return e
		)

	let bindR (type a)(type b)(type err): (a -> (b, err) result) -> (a, err) result M.t -> (b, err) result M.t =
		fun f r -> r |> M.map (R.bindr f)

	let reword_error (type a)(type err)(type err2)
		: (err -> err2) -> (a, err) result M.t -> (a, err2) result M.t =
		fun fn r -> M.map (R.reword_error fn) r

	let unwrap (type a)(type err) : (a M.t, err) result -> (a, err) result M.t =
		function
			| Ok v -> v |> M.map (fun v -> Ok v)
			| Error e -> M.return (Error e)

	let return (type a)(type err) : a -> (a, err) result M.t = fun r -> M.return (R.return r)

	module Infix = struct
		let (>>=) r f = bind f r
	end
end

module LwtMonad = struct
	include Lwt
	let bind f x = Lwt.bind x f
	let tap f x = Lwt.bind x (fun result -> f result |> map (fun () -> result))
end

module Option_r = ResultT(Option)
module Lwt_r = struct
	include ResultT(LwtMonad)
	let and_then : 'a 'err.
		(unit -> (unit, 'err) result Lwt.t)
		-> ('a, 'err) result
		-> ('a, 'err) result Lwt.t
	= fun cleanup result ->
		cleanup () |> Lwt.map (function
			| Ok _ -> result
			| Error e ->
				(* cleanup error is secondary to main error *)
				result |> R.bindr (fun _ -> Error e)
		)
end
let ok_lwt x = Lwt.map R.ok x
