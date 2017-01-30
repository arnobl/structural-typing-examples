functor
import
    Application
    System
define

    class Wolf
        meth init skip end

        meth quack($)
            "QUACK QUACK WHOO"
        end

        meth dance($)
            " ¯\\_()_/¯ "
        end

        meth eat(Duck $)
            " 😈 "
        end
    end

    class Mallard
        meth init skip end

        meth quack($)
            "quack quack"
        end

        meth dance($)
            " _/¯ "
        end
    end

    proc {TwoDucksAlone D1 D2}
        {System.showInfo {D1 quack($)}}
        {System.showInfo {D2 quack($)}}

        {System.showInfo {D1 dance($)}}
        {System.showInfo {D2 dance($)}}
    end

    TheWolf = {New Wolf init}
    TheDuck = TheWolf
    ADuck = {New Mallard init}

in
    {TwoDucksAlone TheDuck ADuck}
    {System.showInfo {TheWolf eat(TheDuck $)}}
    {Application.exit 0 }
end
