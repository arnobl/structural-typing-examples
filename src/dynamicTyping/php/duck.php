<?php

interface Duck {
	public function quake() : string;
	public function dance() : string;
}

class Mallard implements Duck {
	public function quake() : string {
		return "quack quack";
	}

	public function dance() : string {
		return " _/¯ ";
	}
}

class Wolf {
	public function quake() : string {
		return "QUACK QUACK WHOO";
	}

	public function dance() : string {
		return " ¯\\_()_/¯ ";
	}

	public function eat(Duck $duck) : string {
		return " 😈 ";
	}
}


// Since php7 variables can be explicitly typed leading to the php nominal typing not to compile the code
// since Wolf is not a Duck. So, weak typing is used here.
function twoDucksAlone($d1, $d2) {
	echo $d1->quake(). "\n";
	echo $d2->quake(). "\n";
	echo $d1->dance(). "\n";
	echo $d2->dance(). "\n";
}


$duck = new Mallard();
$wolf = new Wolf();

twoDucksAlone($duck, $wolf);

echo $wolf->eat($duck) . "\n";

?>

