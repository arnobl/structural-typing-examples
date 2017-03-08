#!/usr/bin/env groovy

class Mallard {
    def dance() {
        return " _/¯ "
    }

    def talk() {
        return "quack quack"
    }
}

class Wolf {
    def eat(duck) {
        return " 😈 "
    }

    def dance() {
        return " ¯\\_()_/¯ "
    }

    def talk() {
        return "QUACK QUACK WHOO"
    }
}

class Forest {
    def twoDucksAlone(d1, d2) {
        println(d1.dance())
        println(d2.dance())
        println(d1.talk())
        println(d2.talk())
    }
}

wolf = new Wolf()
theDuck = wolf
aDuck = new Mallard()
aForest = new Forest()

aForest.twoDucksAlone(aDuck, theDuck)
println(wolf.eat(aDuck))