interface Duck {
	fun quack(): String
	fun dance(): String
}

class Wolf {
	public fun eat(d: Duck): String = " 😈 "
	public fun quack(): String = "QUACK QUACK WHOO"
	public fun dance(): String = " ¯\\_()_/¯ "
}

class Mallard : Duck {
	public override fun quack() = "quack quack"
	public override fun dance() = " _/¯ "
}

class DuckCosplay(val wolf: Wolf) : Duck {
	public override fun quack() = wolf.quack()
	public override fun dance() = wolf.dance()
}


fun main() {
    val wolf = Wolf()
    val theDuck: Duck = DuckCosplay(wolf)
    val aDuck: Duck = Mallard()

    twoDucksAlone(aDuck, theDuck)

    println(wolf.eat(aDuck))
}

fun twoDucksAlone(d1: Duck, d2: Duck) {
    println(d1.quack());
    println(d2.quack());

    println(d1.dance());
    println(d2.dance());
}
