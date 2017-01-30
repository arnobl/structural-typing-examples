
class Wolf {
	quack() { return "QUACK QUACK WHOO" }
	dance() { return " ¯\\_()_/¯ " }
	eat(duck) { return " 😈 " }
}


class Mallard{
	quack() { return "quack quack" }
	dance() { return " _/¯ " }
}


function twoDucksAlone(d1, d2) {
	console.log(d1.quack())
	console.log(d2.quack())

	console.log(d1.dance())
	console.log(d2.dance())
}


let wolf = new Wolf()
let theDuck = wolf
let aDuck = new Mallard()

twoDucksAlone(aDuck, theDuck)

console.log(wolf.eat(aDuck))
