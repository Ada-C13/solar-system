require_relative './planet.rb'

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    planet_list = "Planets orbiting #{@star_name}"
    @planets.length.times do |i|
      planet_list += "\n #{i + 1}. #{@planets[i].name}"
    end

    return planet_list
  end

  def find_planet_by_name(planet)
    planet.capitalize!()

    planet_lookup = @planets.find_index {|item| item.name.capitalize() == planet}

    return planet_lookup ? @planets[planet_lookup].summary : "The planet #{planet} doesn't exist"
  end
end