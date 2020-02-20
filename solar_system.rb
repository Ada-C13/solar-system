class SolarSystem
  attr_reader :star_name,:planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planets(planet)
    @planets << planet
    return @planets
  end

  def find_planet_by_name(planet_info_input)
    planet_info_input = planet_info_input.capitalize
    @planets.each do |planet|
    if planet.name == planet_info_input
    return planet
      end
  end
    return false
end

def list_planets
    str_planets = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet,num|
    str_planets += " \n #{num += 1}. #{planet.name} "
  end
      return str_planets 
    end
end