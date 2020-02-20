class SolarSystem
    attr_reader :star_name, :planets
    def initialize(star_name)
        @star_name= star_name
        @planets= []
    end
    def add_planet(planet)
        raise(ArgumentError, "not a planet") unless planet.instance_of? Planet
        @planets << planet
    end

    def list_planets
        line = "Planets orbiting the #{@star_name} include:"
        @planets.each_with_index do |planet, index|
            line << "\n #{index +1}. #{planet.name}"
        end
        return line 
    end

    #this will return the first planet that the planet_name matches with. 
    #we could use .find/.detect to find the planet 
    def find_planet_by_name(planet_name)
        raise(ArgumentError, "not a planet") unless planet_name.instance_of? String 
        @planets.each do |planet|
            return planet if planet_name.upcase == planet.name.upcase
        end
        puts "#{planet_name} is not a valid planet:(" #difference between throw and raise an error? 
    end
end

