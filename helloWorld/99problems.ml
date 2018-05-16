(* We will not be using the types from batteries *)

(* last : 'a list -> 'a *)
(* should return the last element in a list. removed option type*)
let last list = List.nth list ((List.length list) - 1);;
print_int (last [1;2;3])

(* Skipped 2 *)

(* at : int -> 'a list -> 'a*)
(* Find the kth element of a list *)
let at pos list = List.nth list pos;;
print_int (at 1 [2;3;4])

(* length : list -> int *)
(* Find the length of a list*)
let length list = 
	let rec incr n = function
		| [] -> n
		| _::t -> incr (n+1) t
	in incr 0 list
;;
print_int (length [4;5;6])

(* Reverse a list*)
(* reverse : 'a list -> 'a list *)
let reverse list =
	let rec rev acc = function
		| [] -> acc
		| h::t -> rev (h::acc) t
	in rev [] list
;;
print_int (at 2 (reverse [4;3;2;1]))

(* Check if a list is a palindrome *)
(* is_palindrome : 'a list -> bool *)
let is_palindrome list = list = (reverse list);;
Printf.printf "%B" (is_palindrome [1;2;2;1])

(* Flatten a nested list structure *)
type 'a node =
	| One of 'a
	| Many of 'a node list
;;
(* flatten : 'a node list -> 'a list *)
let flatten list =
	let rec aux acc = function
		| [] -> acc
		| One x::t -> aux (x :: acc) t  (* if One at the head, concatinate to head of acc*)
		| Many x::t -> aux (aux acc x) t  (* if Many at head, recursively concatinate to acc*)
	in reverse (aux [] list) (* since we cannot write acc :: x, *)
;;

(* Eliminate consecutive duplicates of list elements *)
(* compress : 'a list -> 'a list *)
(* mine ended up using the option type: compress : 'a option list -> 'a option list  *)
let compress list =
	let rec aux acc last = function
		| [] -> acc
		| x::t when x = last -> (aux acc last) t
		| x::t when x != last -> x::((aux acc x) t)
	in (aux [] None) list
;;
(* Answer implementation
let rec compress = function
	| a:: (b :: _ as t) -> if a = b then compress t else a :: compress t(* why do we need _ as t?*)
	| x -> x
;;

(* combines first and last case, no last variable *)

*)





