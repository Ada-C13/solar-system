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
    string = ""
    if planets.length == 0 
      return "" 
    end 
    @planets.each_with_index do |planet, i| 
        string = string +  "#{i+1}. #{planet.name}"
        string = string + "\n"
      end 
    return string 
  end 

  def find_planet_by_name(planet_input)
    input = planet_input.upcase 
    @planets.each do |planet|
      if input == planet.name.upcase
        return planet
      end
    end 
    return "did not find planet"
  end 
 
end 