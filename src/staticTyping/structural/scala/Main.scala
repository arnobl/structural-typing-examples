import scala.language.reflectiveCalls

trait Duck {
	def quack : String
	def dance : String
}


class Wolf {
	def quack : String = "QUACK QUACK WHOO"
	def dance : String = " ¯\\_()_/¯ "
	def eat(duck : Duck) : String = " 😈 "
}

class Mallard extends Duck{
	def quack : String = "quack quack"
	def dance : String = " _/¯ "
}


object Main {
	type duckType = {def quack:String; def dance:String}

	def main(args : Array[String]) {
		val wolf : Wolf = new Wolf()
		val theDuck: duckType = wolf // Not mandatory

		val aDuck : Duck = new Mallard()

		twoDucksAlone(aDuck, theDuck)

		println(wolf.eat(aDuck))
	}

	def twoDucksAlone(d1: duckType, d2: duckType) = {
		println(d1.quack)
		println(d2.quack)

		println(d1.dance)
		println(d2.dance)
	}
}