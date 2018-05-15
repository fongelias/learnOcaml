let is_zero x = 
  match x with
  | 0 -> true
  | _ -> false (* "_" means "anything else" *)
;;

let is_also_zero = 
  function
  | 0 -> true
  | _ -> false
;;

let abs x =
  match x with
  | x when x < 0 -> -x
  | _ -> x
;;

type animal = Dog of string | Cat of string ;;
let noise x =
  match x with
  | Dog x -> x ^ " says woof"
  | Cat x -> x ^ " says meow"
;;

let rec sum_list l = 
  match l with
  | [] -> 0;
  | head :: tail -> head + (sum_list tail)
 ;;

Printf.printf "%B %B %d \n" (is_zero 1) (is_also_zero 0) (abs (-1));;
print_string ((noise (Dog "Joey")) ^ "\n");;
print_int (sum_list [1;2;3]);
