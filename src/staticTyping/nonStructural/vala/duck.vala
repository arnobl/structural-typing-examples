

interface Duck : Object {
	public abstract string quack();
	public abstract string dance();
}

class Wolf : Object {
	public string eat(Duck d) { return " 😈 "; } 
	public string quack() { return "QUACK QUACK WHOO"; }
	public string dance() { return " ¯\\_()_/¯ "; }	
}

class Mallard : Object, Duck {
	public string quack() { return "quack quack"; }
	public string dance() { return " _/¯ "; }	
}

class DuckCosplay : Object, Duck {
	Wolf wolf;

	public DuckCosplay(Wolf w)
		requires (w != null) 
		ensures (wolf == w) {
		wolf = w; 
	}
	public string quack() { return wolf.quack(); }
	public string dance() { return wolf.dance(); }	
}


void twoDucksAlone(Duck d1, Duck d2) {
	stdout.printf("%s\n", d1.quack());
	stdout.printf("%s\n", d2.quack());

	stdout.printf("%s\n", d1.dance());
	stdout.printf("%s\n", d2.dance());
}

int main (string[] args) {
	Wolf wolf = new Wolf();
	Duck theDuck = new DuckCosplay(wolf);
	Duck aDuck = new Mallard();

	twoDucksAlone(aDuck, theDuck);

	stdout.printf("%s\n", wolf.eat(aDuck));

	return 0;
}
