
class Wolf {
	quack() { return "QUACK QUACK WHOO" }
	dance() { return " ¯\\_()_/¯ " }
	eat(duck) { return " 😈 " }
}


class Mallard{
	quack() { return "quack quack" }
	dance() { return " _/¯ " }
}


let wolf = new Wolf()
let theDuck = wolf

let aDuck = new Mallard()

console.log(aDuck.quack())
console.log(theDuck.quack())

console.log(aDuck.dance())
console.log(theDuck.dance())

console.log(wolf.eat(aDuck))
