interface Duck {
    fun quack() : String
    fun dance() : String
}

class Mallard : Duck {
    override fun quack() : String {
        return "quack quack"
    }
    
    override fun dance() : String {
    	return " _/¯ "
    }
}

class Wolf {
    fun quack() : String {
        return "QUACK QUACK WHOO"
    }
    
    fun dance() : String {
        return " ¯\\_()_/¯ "
    }
    
    fun eat(duck : Duck) : String {
        return " 😈 "
    }
}

// Kotlin dynamic typing only works when compiling to js.
fun twoDucksAlone(d1 : dynamic, d2 : dynamic) {
    println(d1.quack())
    println(d2.quack())
    println(d1.dance())
    println(d2.dance())
}

fun main(args: Array<String>) {
    val wolf = Wolf()
    val duck : Duck = Mallard()
    twoDucksAlone(duck, wolf)
    println(wolf.eat(duck))
}
