Object subclass: Mallard [
  quack [ ^'quack quack' ]
  dance [ ^' _/¯ ' ]
]

Object subclass: Wolf [
  quack [ ^'QUACK QUACK WHOO' ]
  dance [ ^' ¯\_()_/¯ ' ]
  eat: duck [ ^' 😈 ' ]
]

wolf := Wolf new.
theDuck := wolf.

aDuck := Mallard new.

Transcript show: aDuck quack; cr.
Transcript show: theDuck quack; cr.

Transcript show: aDuck dance; cr.
Transcript show: theDuck dance; cr.

Transcript show: (wolf eat: aDuck); cr.
