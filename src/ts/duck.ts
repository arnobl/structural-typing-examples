
interface Duck {
	quack() : string;
	dance() : string;
}

class Wolf {
	quack() : string { return "QUACK QUACK WHOO"; }
	dance() : string { return " ¯\\_()_/¯ "; }
	eat(duck : Duck) : string { return " 😈 "; }
}

class Mallard implements Duck {
	quack() : string { return "quack quack" }
	dance() : string { return " _/¯ " }
}


const wolf : Wolf = new Wolf()
const theDuck : Duck = wolf

const aDuck : Duck = new Mallard()

console.log(aDuck.quack())
console.log(theDuck.quack())

console.log(aDuck.dance())
console.log(theDuck.dance())

console.log(wolf.eat(aDuck))

