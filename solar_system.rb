class SolarSystem
    # readable, not writeable
    attr_reader :star_name, :planets

    def initialize(star_name)
        @star_name = star_name
        @planets = []
    end

    # methods
    def add_planet(planet)
        # take an instance of Planet as a parameter and add it to the list of planets.
        planets << planet
    end

    def list_planets
        # return (not puts) string containing a list of all the planets in the system.
        string = "Planets orbiting #{star_name}\n"
        num = 0
        planets.each do |item|
            num +=1
            string << "#{num}. #{item.name}\n"
        end
        return string
    end

    def find_planet_by_name(string)
        # takes the name of a planet as a string, and returns the corresponding instance of Planet
        string = string.downcase.capitalize
        
        planets.each do |item|
            if item.name == string
                return item
            end
        end
        # cannot find planet scenario
        if planets.include?(string) == false
            return "Planet not found"
        end

    end

end