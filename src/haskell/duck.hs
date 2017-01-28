{- A typeclass that Wolf and Mallard will have to explicitly instantiate -}
class Duck a where
    quake :: a -> String
    dance :: a -> String

data Wolf = Wolf

eat :: (Duck t) => Wolf -> t -> String
eat _ _ = " 😈 "

{- In order to become a duck, Wolf has to use the Adapter pattern. In
- Haskell, typeclasses are Constraints and not types, so it's impossible to
- force the type of any value to be Duck (it's not a type). And a Wolf
- is not a Duck, so it has to disguise himself. -}
data DuckCosplay = DuckCosplay Wolf
instance Duck DuckCosplay where
    quake _ = "QUACK QUACK WHOO"
    dance _ = " ¯\\_()_/¯ "

data Mallard = Mallard
instance Duck Mallard where
    quake _ = "quack quack"
    dance _ = " _/¯ "

twoDucksAlone :: (Duck aDuck, Duck theDuck) => aDuck -> theDuck -> IO()
twoDucksAlone aDuck theDuck = do
    putStrLn (quake aDuck)
    putStrLn (quake theDuck)

    putStrLn (dance aDuck)
    putStrLn (dance theDuck)


main = do
    let theWolf = Wolf
    let theDuck = DuckCosplay Wolf
    let aDuck = Mallard

    twoDucksAlone aDuck theDuck

    putStrLn (theWolf `eat` aDuck)
