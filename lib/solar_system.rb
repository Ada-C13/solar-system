class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  # take an instance of Planet as a parameter and add it to the list of planets
  def add_planet(planet) # comes in as a string
    @planets << planet   # this is the problem here; it's only adding the string - need to put in the entire instance of planet in here.  how the fuck are we going to do that.  initialize it again?  no...
  end
  
  # returns a string containing a list of all the planets in the system (format below class definition)
  def list_planets    
    planet_string_list = "Planets orbiting #{star_name}:"
    @planets.each_with_index do |planet, index|
      planet_string_list += "\n#{index + 1}: #{planet.name}"
    end
    return planet_string_list
  end
  
  # takes the name of a planet as a string, returns the corresponding instance of Planet
  # lookup is case insensitive
  def find_planet_by_name(planet)
    planet = planet.downcase.capitalize
    found_planet = []
    if @planet.name == planet
      found_planet << planet
    else
      return "#{planet} is not in #{@star_name}."
    end 
    return found_planet[0]
  end
  # found_planet = solar_system.find_planet_by_name('Mars')
end