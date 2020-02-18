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
    puts "Planets orbiting #{@star_name}"
    @planets.each_with_index {|planet, idx| return "#{idx + 1}. #{planet.name}"}
  end
end