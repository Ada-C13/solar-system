require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name, planets = [])
    @star_name = star_name
    @planets = planets
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    intro = "Planets orbiting #{@star_name}\n"
    list_string = ""
    @planets.each_with_index do |planet, i|
      list_string += "#{i + 1}. #{planet.name}\n"
    end
    return intro + list_string
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      return planet if planet.name == planet_name.capitalize
    end
  end
end
