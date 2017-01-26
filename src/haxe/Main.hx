
interface Duck {
	public function quack():String;
	public function dance():String;
}

class Mallard implements Duck{
	public function new() {}
	public function quack(): String return "quack quack";
	public function dance(): String return " _/¯ ";
}

class Wolf {
	public function new() {}
	public function quack(): String return "QUACK QUACK WHOO";
	public function dance(): String return " ¯\\_()_/¯ ";
	public function eat(duck : Duck) : String return " 😈 ";
}

typedef DuckType = {
	function quack():String;
	function dance():String;
}


class Main {
	static public function main():Void {
		var wolf:Wolf = new Wolf();
		var theDuck:DuckType = wolf; // Not mandatory. Just to show the structural typing.

		var aDuck:Duck = new Mallard();

		twoDucksAlone(aDuck, theDuck);

		trace(wolf.eat(aDuck));
  }

	static public function twoDucksAlone(d1:DuckType, d2:DuckType) {
		trace(d1.quack());
		trace(d2.quack());

		trace(d1.dance());
		trace(d2.dance());
	}
}
