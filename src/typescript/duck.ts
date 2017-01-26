
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
const theDuck : Duck = wolf // Not mandatory

const aDuck : Duck = new Mallard()

twoDucksAlone(aDuck, theDuck)

console.log(wolf.eat(aDuck))


function twoDucksAlone(d1:Duck, d2:Duck) {
	console.log(d1.quack())
	console.log(d2.quack())

	console.log(d1.dance())
	console.log(d2.dance())
}
