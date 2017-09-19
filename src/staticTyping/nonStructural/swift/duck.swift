
protocol Duck {
    func quake() -> String
    func dance() -> String
}


class Mallard : Duck {
    func quake() -> String {
        return "quack quack"
    }
    
    func dance() -> String {
        return " _/¯ "
    }  
}


class Wolf {
    func quake() -> String {
        return "QUACK QUACK WHOO"
    }
    
    func dance() -> String {
        return " ¯\\_()_/¯ "
    }
    
    func eat(duck : Duck) -> String {
        return " 😈 "
    }
}

class DuckCosplay : Duck {
    let wolf : Wolf
    
    init(w : Wolf) {
        wolf = w;
    }
    
    func quake() -> String {
        return wolf.quake()
    }
    
    func dance() -> String {
        return wolf.dance()
    }
}


func twoDucksAlone(d1 : Duck, d2 : Duck) {
    print(d1.quake())
    print(d2.quake())
    print(d1.dance())
    print(d2.dance())
}


let duck : Duck = Mallard()
let wolf = Wolf()
let theDuck : Duck = DuckCosplay(w : wolf)

twoDucksAlone(d1 : duck, d2 : theDuck)
print(wolf.eat(duck : duck))

