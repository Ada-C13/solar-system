class Planet
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

    def initalize(name, color, mass_kg, distance_from_sun_km, fun_fact)
        @name = name.upcase
        @color = color
        @mass_kg = mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact
    end
    
    def summary
        planet_details =
        "The planet #{@name}'s is #{@color} in color and weighs #{@mass_kg} kgs. 
        #{@name}'s distance frome the sun is #{@distance_from_sun_km}. 
        Here's a fun nugget about #{@name}: #{@fun_fact}."
        return planet_details
    end
end