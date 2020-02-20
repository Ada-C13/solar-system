class SolarSystem
  
  attr_reader :star_name, :planets
  
  # initialize Solar System
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  # add planet to Solar System
  def add_planet(planet)
    @planets << planet 
  end
  
  # lists planets in Solar System
  def list_planets    
    planet_string_list = "\nPlanets orbiting #{star_name}:"
    @planets.each_with_index do |planet, index|
      planet_string_list += "\n#{index + 1}: #{planet.name}"
    end
    
    return planet_string_list
  end
  
  # locates planet taken in as a string
  def find_planet_by_name(planet_parameter) 
    planet_parameter = planet_parameter.downcase.capitalize
    
    found_planet = @planets.select { |planet| planet.name == planet_parameter }

      if found_planet.empty?
        return nil
      end

      if found_planet.length > 1
      puts "There's more than one planet with that name; I'll just show you the first one!"
      return found_planet[0]
      end

    return found_planet[0]
  end

end