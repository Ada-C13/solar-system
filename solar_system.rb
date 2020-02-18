
require_relative 'planet'
# Create a new class called SolarSystem
class SolarSystem
    attr_reader :star_name, :planets
    # Constructor 
    
    def initialize(star_name)
        @planets = []
        @star_name = star_name
    end

    # Create a method SolarSystem#add_planet, 
    # which will take an instance of Planet as a parameter 
    # and add it to the list of planets.

    def add_planet(Planet)
        
    end 
end

