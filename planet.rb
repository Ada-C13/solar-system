class Planet 
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

    def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
        raise(ArgumentError, "not a positive number") unless (mass_kg.to_i > 0)
        raise(ArgumentError, "not a positive number") unless (distance_from_sun_km.to_i > 0)
        @name = name
        @color = color 
        @mass_kg = mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact
    end
    def summary 
        return "#{@name} is #{color} with a mass of #{mass_kg}kg and located #{distance_from_sun_km}km from the sun. Fun fact: #{fun_fact}."
    end
end