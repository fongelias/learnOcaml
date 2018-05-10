
let i = ref 0;;
while !i < 11 do
  print_int !i;
  if !i == 10 then print_string "\n";
  i := !i + 1
done






