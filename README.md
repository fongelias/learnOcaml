# learnOcaml
repo for notes and little scripts in Ocaml

## Notes
### [Wikipedia](https://en.wikipedia.org/wiki/OCaml)
* Object Oriented Caml
* Tools include top level interpreter, compiler, native code compiler, reversible debugger, package manager (OPAM)
* Static type systems, type inferring compilers
* function, imperative, OO
* emphasis on performance

### [OCaml for the skeptical](https://www2.lib.uchicago.edu/keith/ocaml-class/why.html)
* Ability to mix and match paradigms
* as fast as C
* single file deployment
* static scope with closures
* Lisp-like syntax extension
* potability

## Tutorials
### [Crash corse on OCaml ecosystem](https://ocaml.org/learn/tutorials/get_up_and_running.html)
#### opam
* `opam` is the package manager for OCaml. This can be installed with `brew install opam`
* `opam install <some_package>` is the basic installation command
* after installation, you need to initialize it with `opam init`
* then, to initialize environment variables, run `eval `opam config env``
* `opam switch <version number>` installs the specified compiler. As of 5/9/18, this number is `4.06.1`
#### Building executables
* `ocamlbuild <filename>.native` builds programs to native executables
* `ocamlfind` wraps Ocaml compilers
* `oasis` abstracts usage of both of the above, replacing makefiles

### [Basics](https://ocaml.org/learn/tutorials/basics.html)
* Ocaml REPL can be entered with `ocaml` command and exited with `exit 0;;`
* Ocaml comments are delimited by `(*` and `*)`, there are no single line comments
* Ocaml function calls do not use brackets nor commas between arguments: `repeated "hello" 3` calls the function `repeated` on arguments `"hello"` and `3`
* brackets can be placed around a whole function call to capture its return value: `repeated (repeated "hello" 3) 3`
* functions are defined with keyword `let`: `let average a b = (a +. b) /. 2.0;;`
* Ocaml uses type inference to work out the types, so they do not need to be declared
* Ocaml does not do implicit casting, which is why 2.0 is used instead of 2
* operators followed with a `.` operate on floats, rather than integers, i.e. `+.`
* Ocaml does not have a return keyword- the last expression in a function becomes the result of the function
* functions are not recursive unless you declare them with `let rec` instead of just `let`
* functions that take any type are denoted with type `'a`

#### Basic types
* int
* float
* double
* bool
* char
* string
* unit (similar to void)

### [Structure of OCaml Programs](https://ocaml.org/learn/tutorials/structure_of_ocaml_programs.html)
* phrase `let name = expression in` is used to define a named local expression (can be used until a `;;`, which ends the block)
* this expression can no longer be changed
* nested functions are defined with the same keyword `in`
* global variables are also defined with `let`
* references are variables that can be changed and assigned to, similar to pointers in C
* references are declared with `ref` keyword: `let my_ref = ref 0;;`
* references can be re-assigned: `my_ref := 100;;`
* references can be dereferenced to expose the contents: `!my_ref;;`

#### Modules and open
* libraries are located on /usr/lib/ocaml/ for Unix
* for example, the `graphics.cma` file is loaded with the `open Graphics;;` declaration
* otherwise, you can prefix all calls to the functions like `Graphics.open_graph`
* in the interactive toplevel, you must load the library with `load "graphics.cma";;`


















