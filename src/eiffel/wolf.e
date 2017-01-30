class
    WOLF

convert
	to_duck: {DUCK}

feature {ANY}

    eat(duck: DUCK) : STRING is
        do
            Result := " 😈 %N"
        end

	to_duck: DUCK is
		local
			cosplay: DUCK_COSPLAY
		do
			create cosplay.disguise(Current)
			Result := cosplay
		end

end -- class WOLF