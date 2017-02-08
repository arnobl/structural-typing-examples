class Mallard:
  def dance(self):
    return " _/¯ "
  def talk(self):
    return "quack quack"

class Wolf:
  def eat(self, duck):
    return " 😈 "
  def dance(self):
    return " ¯\\_()_/¯ "
  def talk(self):
    return "QUACK QUACK WHOO"

class Forest:
  def twoDucksAlone(self, d1, d2):
      print(d1.dance())
      print(d2.dance())
      print(d1.talk())
      print(d2.talk())

wolf = Wolf()
theDuck = wolf
aDuck = Mallard()
aForest = Forest()


aForest.twoDucksAlone(aDuck, theDuck)
print(wolf.eat(aDuck))
