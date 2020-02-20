class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(inst_of_planet_class)
    @planets << inst_of_planet_class 
  end

  def list_planets
    # return "Planets orbiting #{@star_name}"
    str = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, index|
      str += "\n#{index +1}. #{planet.name}"
    end
    return str
  end

  def find_planet_by_name(planet_name) # planet_name is a string
    planet_name = planet_name.capitalize
    @planets.each do |planet_info| # @planets the array that stores planet objects 
      if planet_info.name == planet_name
        return planet_info # return the planet object
      end
    end
    raise ArgumentError.new("No such planet")
  end

  def distance_between(planet_one, planet_two) # planet_one and _two are strings
   distance_one = find_planet_by_name(planet_one).distance_from_sun_km
   distance_two = find_planet_by_name(planet_two).distance_from_sun_km
   return (distance_one - distance_two).abs
  end
end

# Optional: add minitest for SolarSystem class