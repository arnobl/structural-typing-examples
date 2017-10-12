(defprotocol DuckP
  "A duck behavior"
  (quack [d] "duck quack")
  (dance [d] "duck dance"))

(defprotocol WolfP
  "A wold behavior"
  (eat [w d] "wolf eat duck"))


(deftype Mallard []
  DuckP
  (quack [d] "quack quack")
  (dance [d] " _/¯ "))


(deftype Wolf []
  DuckP
  (quack [w] "QUACK QUACK WHOO")
  (dance [w] " ¯\\\\_()_/¯ ")
  WolfP
  (eat [w d] " \uD83D\uDE08 "))

(defn twoDucksAlone [d1 d2]
     (println (quack d1))
     (println (quack d2))
     (println (dance d1))
     (println (dance d2)))

(let [d (Mallard.)
      w (Wolf.)]
  (twoDucksAlone d w)
  (println (eat w d)))
