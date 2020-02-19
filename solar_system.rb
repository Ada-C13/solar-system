class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # take an instance of Planet as a parameter and add it to the list of planets
  def add_planet(planet)
    @planets << planet.name
  end

  # returns a string containing a list of all the planets in the system (format below class definition)
  def list_planets    
    planet_string_list = "Planets orbiting #{star_name}:"
    @planets.each_with_index do |planet, index|
      planet_string_list += "\n#{index + 1}: #{planet}"
    end
    return planet_string_list
  end

  # takes the name of a planet as a string, returns the corresponding instance of Planet
  # lookup is case insensitive
  def find_planet_by_name(planet)
    planet = planet.downcase
    reuturn planet.summary
  end
  # found_planet = solar_system.find_planet_by_name('Mars')
end

# found_planet = solar_system.find_planet_by_name('Earth')

# # found_planet is an instance of class Planet
# puts found_planet
# # => #<Planet:0x00007fe7c2868ee8>

# puts found_planet.summary
# # => Earth is a blue-green planet ...