(* last : 'a list -> 'a *)
(* should return the last element in a list*)
let last list = List.nth list ((List.length list) - 1);;
print_int (last [1;2;3]);;


