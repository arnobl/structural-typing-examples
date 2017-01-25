package main

import "fmt"

type Duck interface {
	quack() string
	dance() string
}

type Wolf struct {
}

type Mallard struct {
}


func (m Mallard) quack() string { return "quack quack" }
func (m Mallard) dance() string  { return " _/¯ " }

func (w Wolf) quack() string { return "QUACK QUACK WHOO" }
func (w Wolf) dance() string  { return " ¯\\_()_/¯ " }
func (w Wolf) eat(duck Duck) string  { return " 😈 " }


func main() {
	var wolf Wolf
	var theDuck Duck

	theDuck = &wolf

	var aDuck Mallard

	fmt.Printf("%s\n", aDuck.quack())
	fmt.Printf("%s\n", theDuck.quack())

	fmt.Printf("%s\n", aDuck.dance())
	fmt.Printf("%s\n", theDuck.dance())

	fmt.Printf("%s\n", wolf.eat(aDuck))
}
