interface Duck {
    shared formal String quack();
    shared formal String dance();
}

class Mallard() satisfies Duck {
    shared actual String quack() => "quack quack";
    shared actual String dance() => " _/¯ ";
}

class Wolf() {
    shared String eat(Duck duck) => " 😈 ";
    shared String quack() => "QUACK QUACK WHOO";
    shared String dance() => " ¯\\_()_/¯ ";
}

class DuckCosplay(Wolf wolf) satisfies Duck {
	shared actual String quack() => wolf.quack();
	shared actual String dance() => wolf.dance();
}

void twoDucksAlone(Duck d1, Duck d2) {
    print(d1.quack());
    print(d2.quack());

    print(d1.dance());
    print(d2.dance());
}

Wolf wolf = Wolf();
Duck theDuck = DuckCosplay(wolf);
Duck aDuck = Mallard();

twoDucksAlone(aDuck, theDuck);
