
interface Duck {
	string quack();
	string dance();
}

class Mallard : Duck {
	public string quack() { return "quack quack"; }
	public string dance() { return " _/¯ "; }	
}

class Wolf {
	public string eat(Duck d) { return " 😈 "; }
	public string quack() { return "QUACK QUACK WHOO"; }
	public string dance() { return " ¯\\_()_/¯ "; }	
}


class Program {
	static void Main(string[] args) {
		Wolf theWolf = new Wolf();
		dynamic theDuck = theWolf; // No necessary.

		Duck aDuck = new Mallard();

		twoDucksAlone(aDuck, theDuck);

		System.Console.WriteLine(theWolf.eat(aDuck));
	}

	public static void twoDucksAlone(dynamic d1, dynamic d2) {
		System.Console.WriteLine(d1.quack());
		System.Console.WriteLine(d2.quack());

		System.Console.WriteLine(d1.dance());
		System.Console.WriteLine(d2.dance());
	}
}