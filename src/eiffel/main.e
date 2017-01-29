class MAIN

create {ANY}
    main

feature {ANY}

    main
        local
            wolf: WOLF
            cosplay: DUCK_COSPLAY
            the_duck: DUCK
            mallard: MALLARD
            a_duck: DUCK
        do
            create wolf
            create cosplay.disguise(wolf)
            create mallard

            the_duck := cosplay
            a_duck := mallard

            two_ducks_alone(the_duck, a_duck)
            io.put_string(wolf.eat(a_duck))
        end

feature {}

    two_ducks_alone(d1: DUCK; d2: DUCK)
        do
            io.put_string(d1.quack)
            io.put_string(d2.quack)
            io.put_string(d1.dance)
            io.put_string(d2.dance)
        end

end -- class MAIN

