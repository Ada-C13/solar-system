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
    x = 0
    until x = planets.length 
      return "Planets orbiting <#{star_name}> \n #{x+1}. #{planets[x]}"
      x += 1
    end
  end
end

