let rec factorial n =
  if n = 0 then 1
  else n * factorial (n-1)
in

let fact2 () = factorial 2 in
print_int (factorial 3);
print_int (fact2())
