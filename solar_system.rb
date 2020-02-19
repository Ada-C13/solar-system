class SolarSystem
  attr_reader :planets,:star_name
  attr_accessor :planet
  
  def initialize(star_name)
    @planets = Array.new
    @star_name = star_name
  end

  def add_planet(planet)
    @planets << planet.name
  end

  def list_planets
   list_planets = "Planets orbiting #{@star_name}:"
   @planets.each.with_index do |planet, index|
     list_planets += "\n#{index+1}. #{planet}" 
    end
 
    return list_planets
  end
end

