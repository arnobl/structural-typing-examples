type IDuck =
    abstract member Quack: unit -> string
    abstract member Dance: unit -> string

type Mallard() = 
    interface IDuck with
        member this.Quack() = "quack quack"
        member this.Dance() = " _/¯ "

type Wolf() =
    member this.Quack() = "QUACK QUACK WHOO"
    member this.Dance() = " ¯\\_()_/¯ "
    member this.Eat(d : IDuck) = " 😈 "
    
let inline twoDucksAlone (d1, d2) =
    // Verbose. May be improved
    let quacking1 = ( ^a : (member Quack : unit -> string) d1)
    let quacking2 = ( ^b : (member Quack : unit -> string) d2)
    let dancing1 = ( ^a : (member Dance : unit -> string) d1)
    let dancing2 = ( ^b : (member Dance : unit -> string) d2)
    printfn "%s" (quacking1)
    printfn "%s" (quacking2)
    printfn "%s" (dancing1)
    printfn "%s" (dancing2)
    ()

let theWolf : Wolf = new Wolf()
// let theDuck : IDuck = theWolf :> IDuck // Not possible

let aDuck : IDuck = new Mallard() :> IDuck

twoDucksAlone(aDuck, theWolf)

printfn "%s" (theWolf.Eat(aDuck))
