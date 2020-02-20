
# Create a new class called SolarSystem
class SolarSystem 
    attr_reader :star_name, :planets
    # Constructor 
    
    def initialize(star_name)
        @star_name = star_name
        @planets = []
    end

    # Create a method SolarSystem#add_planet, 
    # which will take an instance of Planet as a parameter 
    # and add it to the list of planets.

    def add_planet(planet)
        @planets << planet
        return @planet
    end 

    # Create a method SolarSystem#list_planets, 
    # which will return (not puts) a string containing a list of all the planets in the system. 
    # The string should be formatted in this style:

    def list_planets 
        string = "Planet orbiting #{@star_name}\n"
        num = 1
        @planets.each do |planet|
        string += "#{num}. #{planet.name}\n"
            num +=1
        end
        return string
    end

    def find_planet_by_name(name)
        planets.each do |planet|
            if planet.name.downcase == name.downcase 
                return planet
            else
                return nil
            end
        end 
    end
end

