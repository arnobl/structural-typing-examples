abstract class Duck {
  String quack();
  String dance();
}

class Mallard extends Duck {
  @override
  String dance() {
    return "quack quack";
  }

  @override
  String quack() {
    return " _/¯ ";
  }
}

class Wolf {
  String dance() {
    return "QUACK QUACK WHOO";
  }

  String quack() {
    return " ¯\\_()_/¯ ";
  }

  String eat(Duck duck) {
    return " 😈 ";
  }
}

main() {
  Duck duck = new Mallard();
  Wolf wolf = new Wolf();

  twoDucksAlone(duck, wolf);

  print(wolf.eat(duck));
}

// Optional typing.
twoDucksAlone(dynamic d1, dynamic d2) {
  print(d1.quack());
  print(d2.quack());

  print(d1.dance());
  print(d2.dance());
}
