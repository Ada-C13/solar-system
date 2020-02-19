class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  # use each with index to produce string list
  def list_planets
    planet_string = "Planets orbiting #{@star_name}: "
    @planets.each_with_index do |planet, index|
      planet_string += "\n #{index + 1}. #{planet.name}"
    end
    return planet_string
  end

  def find_planet_by_name(planet)
    # take planet.name and make case insensitive
    planet = planet.capitalize

    # returns first instance of a match
    found_planet_array = @planets.detect {|p| (p.name) == planet}
    found_planet = found_planet_array
    return found_planet

  end

end
