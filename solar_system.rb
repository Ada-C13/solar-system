class SolarSystem   
  attr_reader :star_name, :planets
  attr_accessor :star_name

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet 
  end

  def list_planets
    declaration = "\nPlanets orbiting #{@star_name} are:\n"
    @planets.each_with_index do |planet, index|
      index += 1
      declaration += "#{index}. #{planet.name}\n"
    end 
    return declaration
  end
end