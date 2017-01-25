
interface Duck {
	String quack();
	String dance();
}

class Wolf {
	public String eat(final Duck duck) { return " 😈 " + duck; }
}

class Mallard implements Duck {
	public String quack() { return "quack quack"; }
	public String dance() { return " _/¯ "; }	
}

class DuckCosplay implements Duck {
	private final Wolf wolf;

	public DuckCosplay(final Wolf w) { wolf = w; }
	public String quack() { return "QUACK QUACK WHOO"; }
	public String dance() { return " ¯\\_()_/¯ "; }	
}


public class Main {
	public static void main(String[] args) {
		final Wolf wolf 	= new Wolf();
		final Duck theDuck= new DuckCosplay(wolf);
		final Duck aDuck 	= new Mallard();

		System.out.println(aDuck.quack());
		System.out.println(theDuck.quack());

		System.out.println(aDuck.dance());
		System.out.println(theDuck.dance());

		System.out.println(wolf.eat(aDuck));
	}
}


