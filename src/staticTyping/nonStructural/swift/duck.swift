
protocol Duck {
    func quack() -> String
    func dance() -> String
}


class Mallard : Duck {
    func quack() -> String {
        return "quack quack"
    }
    
    func dance() -> String {
        return " _/¯ "
    }  
}


class Wolf {
    func quack() -> String {
        return "QUACK QUACK WHOO"
    }
    
    func dance() -> String {
        return " ¯\\_()_/¯ "
    }
    
    func eat(duck : Duck) -> String {
        return " 😈 "
    }
}


func twoDucksAlone(d1 : Duck, d2 : Duck) {
    print(d1.quack())
    print(d2.quack())
    print(d1.dance())
    print(d2.dance())
}


let duck : Duck = Mallard()
let wolf = Wolf()

// Adding the type Duck to Wolf. Because Wolf already implements the same functions than those 
// provided by Duck, there is nothing to implement here.
// This is not structural typing but a kind of open class system.
// Now wolf is technically a Duck, breaking the rule of the exercice, but this feature is funny and shows
// how a wolf can transform itself as a Duck.
extension Wolf : Duck {}

twoDucksAlone(d1 : duck, d2: wolf)
print(wolf.eat(duck : duck))
