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
(* reverse : list -> list *)
let reverse list =
	let rec rev acc = function
		| [] -> acc
		| h::t -> rev (h::acc) t
	in rev [] list
;;
print_int (at 2 (reverse [4;3;2;1]))

(* Check if a list is a palindrome *)
let is_palindrome list = list = (reverse list);;
Printf.printf "%B" (is_palindrome [1;2;2;1])




