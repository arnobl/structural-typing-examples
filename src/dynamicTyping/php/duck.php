<?php

interface Duck {
	public function quake();
	public function dance();
}

class Mallard implements Duck {
	public function quake() {
		echo "quack quack\n";
	}

	public function dance() {
		echo " _/¯ \n";
	}
}

class Wolf {
	public function quake() {
		echo "QUACK QUACK WHOO\n";
	}

	public function dance() {
		echo " ¯\\_()_/¯ \n";
	}

	public function eat(Duck $duck) {
		echo " 😈 \n";
	}
}


// Since php7 variables can be explicitly typed leading to the php nominal typing not to compile the code
// since Wolf is not a Duck. So, weak typing is used here.
function twoDucksAlone($d1, $d2) {
	$d1->quake();
	$d2->quake();
	$d1->dance();
	$d2->dance();
}


$duck = new Mallard();
$wolf = new Wolf();

twoDucksAlone($duck, $wolf);

$wolf->eat($duck);

?>

