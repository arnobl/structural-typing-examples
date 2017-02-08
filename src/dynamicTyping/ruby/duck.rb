class Mallard
    def dance()
        " _/¯ "
    end

    def talk()
        "quack quack"
    end
end


class Wolf

    def eat(duck)
        " 😈 "
    end

    def dance()
        " ¯\\_()_/¯ "
    end

    def talk()
        "QUACK QUACK WHOO"
    end
end

class Forest
    def twoDucksAlone(d1, d2)
        puts d1.dance
        puts d2.dance
        puts d1.talk
        puts d2.talk
    end
end

wolf = Wolf.new
theDuck = wolf
aDuck = Mallard.new
aForest = Forest.new

aForest.twoDucksAlone(aDuck, theDuck)
puts wolf.eat(aDuck)
