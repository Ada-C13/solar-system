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

  def find_planet_by_name(planet_input) 
    planet_input.capitalize!()

    planet_lookup = @planets.find_index {|planet| planet.name.capitalize() == planet_input}

    return planet_lookup ? @planets[planet_lookup] : "The planet #{planet_input} doesn't exist"
  end

  def distance_between(planet_one, planet_two)
    planet_one_distance = planet_one.distance_from_sun_km
    planet_two_distance = planet_two.distance_from_sun_km

    return (planet_one_distance - planet_two_distance).abs
  end
end