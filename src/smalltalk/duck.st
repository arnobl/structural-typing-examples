Object subclass: Mallard [
  quack [ ^'quack quack' ]
  dance [ ^' _/¯ ' ]
]

Object subclass: Wolf [
  quack [ ^'QUACK QUACK WHOO' ]
  dance [ ^' ¯\_()_/¯ ' ]
  eat: duck [ ^' 😈 ' ]
]

Object subclass: Forest [
	twoDucksAlone: d1 and: d2 [
		Transcript show: d1 quack; cr.
		Transcript show: d2 quack; cr.

		Transcript show: d1 dance; cr.
		Transcript show: d2 dance; cr.
	]
]

wolf := Wolf new.
theDuck := wolf.

aDuck := Mallard new.

forest := Forest new.

forest twoDucksAlone: aDuck and: theDuck.

Transcript show: (wolf eat: aDuck); cr.
