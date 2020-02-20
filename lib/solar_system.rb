require_relative 'planet'

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  def add_planet(planet)
    planets << planet
  end

  def list_planets
    string = "Planets orbiting <#{star_name}> \n"
    x = 0
    until x == planets.size.to_i
      string <<  " #{x+1}. #{planets[x].name} \n" 
      x += 1
    end
    return string
  end

  def find_planet_by_name(name)
    name = name.capitalize
    planets.each do |planet|
      return planet if planet.name == name
    end
    return "This is not a planet in this Solar System"
  end

  def distance_between(planet_1, planet_2)
    planet_1 = find_planet_by_name(planet_1)
    planet_2 = find_planet_by_name(planet_2)
    distance = planet_1.distance_from_sun_km.to_i - planet_2.distance_from_sun_km.to_i
    return "#{planet_1.name} is #{distance.abs} km from #{planet_2.name}."
  end
end
