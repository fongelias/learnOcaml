type 'a thingy = { name : string; mutable info : 'a };;

let thingyConcretion = { name = "Elias"; info = 24 };; 
(* Not sure why we need all these ';;', I was told that you should try to use it less*)
print_string thingyConcretion.name;
print_string "\n";
print_int thingyConcretion.info;
print_string "\n"
