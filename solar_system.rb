require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(a_planet)
    @planets << a_planet
  end

  def list_planets
    planets_list = "\nPlanets orbiting #{star_name}:\n"
    @planets.each_with_index do |planet, index|
      planets_list << "#{index + 1}. #{planet.name}\n"
    end

    return planets_list
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name.downcase == planet_name.downcase
        return planet
      end
    end

    return "no such planet"
  end
end
