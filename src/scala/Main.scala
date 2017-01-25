import scala.language.reflectiveCalls

trait Duck {
	def quack : String
	def dance : String
}


class Wolf {
	def quack : String = "QUACK QUACK WHOO"
	def dance : String = " ¯\\_()_/¯ "
	def eat(duck : Duck) : String = " 😈 " + duck
}

class Mallard extends Duck{
	def quack : String = "quack quack"
	def dance : String = " _/¯ "
}


object Main {
	def main(args : Array[String]) {
		val wolf : Wolf = new Wolf()
		val theDuck: {def quack:String; def dance:String} = wolf

		val aDuck : Duck = new Mallard()

		println(aDuck.quack)
		println(theDuck.quack)

		println(aDuck.dance)
		println(theDuck.dance)

		println(wolf.eat(aDuck))
	}
}