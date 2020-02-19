class Planet
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

    def initalize(name:, color:, mass_kg:, distance_from_sun_km:, fun_fact:)
        @name = name
        @color = color
        @mass_kg = mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact
    end


    def color=(new_color)
        @color=new_color
    end

    def summary
        puts "The planet #{@name}'s color is #{@color} and weights #{@mass_kg} kgs. 
        #{@name}'s distance frome the sun is #{@distance_from_sun_km}. 
        Here's a nugget about #{@name}; #{@fun_fact}."
    end
end



