
interface Duck {
	String quack();
	String dance();
}

class Wolf {
	public String eat(Duck d) { return " 😈 "; }
}

class Mallard implements Duck {
	public String quack() { return "quack quack"; }
	public String dance() { return " _/¯ "; }	
}

class DuckCosplay implements Duck {
	Wolf wolf;

	DuckCosplay(Wolf w) { wolf = w; }
	public String quack() { return "QUACK QUACK WHOO"; }
	public String dance() { return " ¯\\_()_/¯ "; }	
}


public class Main {
	public static void main(String[] args) {
		Wolf wolf = new Wolf();
		Duck theDuck = new DuckCosplay(wolf);
		Duck aDuck = new Mallard();

		System.out.println(aDuck.quack());
		System.out.println(theDuck.quack());

		System.out.println(aDuck.dance());
		System.out.println(theDuck.dance());

		System.out.println(wolf.eat(aDuck));
	}
}


