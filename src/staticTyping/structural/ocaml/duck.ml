
(*type duck = <quack : string ; dance : string>*)

(* A virtual class instead of a type to make mallard an explicit sub-class of duck *)
class virtual duck = object
	method virtual quack : string
	method virtual dance : string
end

class mallard = object
	inherit duck
	method quack : string = "quack quack"
	method dance : string = " _/¯ "
end

class wolf = object
	method quack : string = "QUACK QUACK WHOO"
	method dance : string = " ¯\\_()_/¯ "
	method eat(d : duck) : string = " 😈 "
end

let thewolf : wolf = new wolf;;
let theDuck : duck = (thewolf :> duck);;
let aDuck : duck = new mallard;;


Printf.printf "%s\n" aDuck#quack;
Printf.printf "%s\n" theDuck#quack;

Printf.printf "%s\n" aDuck#dance;
Printf.printf "%s\n" theDuck#dance;

Printf.printf "%s\n" (thewolf#eat(aDuck));