class
    DUCK_COSPLAY

inherit
    DUCK

create {ANY}
    disguise

feature {ANY}

    the_wolf: WOLF

    disguise (wolf: WOLF) is
        do
            the_wolf := wolf
        end

    quack : STRING is
        do
            Result := "QUACK QUACK WHOO%N"
        end

    dance : STRING is
        do
            Result := " ¯\\_()_/¯ %N"
        end

end
