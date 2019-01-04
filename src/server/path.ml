open Passe
open Common
open Astring

module Path : sig
	type base
	type relative
	type full

	val pp : relative Fmt.t
	val pp_full : full Fmt.t
	val base : string -> base

	val make : string list -> (relative, [> Error.invalid]) result
	val modify_filename : (string -> string) -> full -> full
	val join : base -> relative -> full
	val to_unix : full -> string

	module PathMap : Map.S with type key = full
end = struct
	(* base is an absolute unix path *)
	type base = string

	let base path =
		if (Filename.is_relative path)
			then Error.failwith (`Invalid ("relative path used for Path.base:" ^ (path)))
			else path

	(* relative is guaranteed to be a nonempty sequence of filenames
	 * - i.e. no part contains slashes or leading dots *)
	type relative = (string list)

	type full = base * relative

	let invalid_component = function
		| "" -> true
		| part -> String.is_prefix ~affix:"." part || String.is_infix ~affix:"/" part

	(* TODO: this would be more efficient if we stored `relative` as (string list * string) *)
	let modify_filename modifier (base, parts) =
		match (List.rev parts) with
			| f :: tail ->
				let modified = modifier f in
				if invalid_component modified
					then Error.failwith (`Invalid "path")
					else (base, (List.rev tail) @ [modified])
			| [] ->
				(* not possible to construct, just for type-completeness *)
				Error.raise_assert "invalid path"

	let make parts =
		if (parts = []) || (parts |> List.any invalid_component)
			then Error (`Invalid "path component")
			else Ok parts

	let pp formatter parts =
		let fmt_slash = Fmt.const Fmt.string Filename.dir_sep in
		(Fmt.list ~sep:fmt_slash Fmt.string) formatter parts

	let pp_full formatter (base, parts) = pp formatter (base :: parts)

	let to_unix (base, path) =
		(String.concat ~sep:Filename.dir_sep (base :: path))

	let join base rel = (base, rel)

	module PathMap = Map.Make (struct
		type t = full
		let compare (abase,a) (bbase,b) =
			let compare_one : string -> string -> int = Pervasives.compare in
			let rec compare_parts a b = (
				match (a,b) with
					| [], [] -> 0
					| [], _ -> -1
					| _, [] -> 1
					| (a1::a, b1::b) -> (match compare_one a1 b1 with
						| 0 -> compare_parts a b
						| diff -> diff
					)
			) in
			compare_parts (abase::a) (bbase::b)
	end)
end

include Path
