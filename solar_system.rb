
class SolarSystem 
  attr_reader :star_name, :planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end 

  def add_planet(planet)
    planets << planet 
  end 

  def list_planets
    string = "Planets orbiting #{star_name}\n"
    planets.each_with_index do |planet, index|
      string += "#{index + 1}. #{planet.name}\n"
    end 
    return string 
  end 

  def find_planet_by_name(string)
    string_cap = string.capitalize 
    planets.each do |planet|
      if planet.name == string_cap
        return planet.summary
      else 
        return "Planet not found!"
      end 
    end 
  end 
  

end 


