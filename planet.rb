require 'awesome_print'

class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
    def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
      @name = name 
      @color = color
      @mass_kg = mass_kg
      @distance_from_sun_km = distance_from_sun_km
      @fun_fact = fun_fact

      if mass_kg <= 0 || distance_from_sun_km <= 0
        puts "Invalid Input for size or distance."
      end 
    end

    def summary
      return "Planet #{name}, is a #{color} planet, #{mass_kg}kg big, and is #{distance_from_sun_km}km away from the sun. #{fun_fact}."
    end

    
   



end 

## Each instance of this class will keep track of information about a single planet.

## Each parameter should be saved in an instance variable with the same name (e.g. @color for color). 
## These instance variables should be readable from outside the class, but not writable.

# earth = Planet.new('Earth', 'blue-green', -5.972e24, 1.496e8, 'Only planet known to support life')

# puts earth.name