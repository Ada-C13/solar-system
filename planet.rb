# Wave 1
class Planet

    # Generate reader methods for the above instances 
    attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

    # Add a constructor to your Planet class
    def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
        @name = name
        @color = color
        @mass_kg = mass_kg
        @distance_from_sun_km = distance_from_sun_km
        @fun_fact = fun_fact
    end

    # Add an instance method to Planet called summary. 
    # This method should return (not puts) a string containing a nicely-formatted description of the planet. 
    # Exercise your summary method in the main method.

    def summary
        return "The planet's name is #{@name}, the color is #{@color} with the weight of #{@mass_kg}kg, it is #{@distance_from_sun_km}km from the sun, and it is the #{@fun_fact}"
    end
end

