class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  def add_planet(planet)
    @planets << planet
  end
  
  def list_planets
    list = "Planets orbiting #{star_name}"
    planets.length.times do |i|
      list += "\n#{i+1}. #{planets[i].name}"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    @planets.find {|planet| planet.name == planet_name.capitalize}
  end

  def find_difference(first_planet, second_planet)  
    (first_planet.distance_from_sun_km - second_planet.distance_from_sun_km).abs
  end
end