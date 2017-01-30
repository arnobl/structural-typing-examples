class
    MALLARD

inherit
    DUCK

feature {ANY}

    quack : STRING is
        do
            Result := "quack quack%N"
        end

    dance : STRING is
        do
            Result := " _/¯ %N"
        end

end -- class MALLARD
