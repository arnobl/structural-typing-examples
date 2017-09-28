Examples in various object-oriented programming languages about how structural typing is supported.
Solutions with languages that do not support structural typing are also detailed with a workaround solution (e.g., using an adapter).

Contributions (pull requests) are welcome.

## Contribute

Contributions with languages having some support of structural typing are preferred. The examples must use explicit structural typing features provided by the language (e.g., a Java solution using reflexivity will not be accepted).

Please follow this format (take a look at the existing solutions):
- a folder with the name of the programming language;
- an executable script file named `run` that compiles and executes the program on Linux;
- a `README` file that explains how the language supports structural typing (or not, and in this case explanations about the workaround are expected);
- The code that follows the scenario.

## Scenario

A type `Duck` exists with two functions `quack` and `dance` that return a string object.

A type `Wolf` exists with three functions: `quack`, `dance`, and `eat`. The functions `quack` and `dance` have the same prototype than in `Duck` and respectively return: `"QUACK QUACK WHOO"` and `" ¯\_()_/¯ "`. The function `eat` takes a `Duck` instance as parameter and returns the string: `" 😈 "`. `Wolf` must not be defined as a `Duck` (i.e., no nominal typing). 

A type `Mallard` (implicitly or explicitly) implements the `Duck` type: `quack` returns `"quack quack"` and `dance` returns `" _/¯ "`.

The program creates a `Wolf` called `wolf`, then declares a `Duck` called `theDuck`. The `wolf` then takes the form of a `Duck` through `theDuck`. A `Mallard` called `aDuck` is then created.

In a dedicated method called `twoDucksAlone` that takes as arguments two ducks `d1` and `d2` :

`d1` and `d2` quack.

`d1` and `d2` dance.

After this method call with `aDuck` and `theDuck` as parameters:

`wolf` eats `aDuck`.

The output of the program should be:

```
quack quack
QUACK QUACK WHOO
 _/¯ 
 ¯\_()_/¯ 
 😈 
 ```
