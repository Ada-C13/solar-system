# solar-system.rb 

class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name 
    @planets = []
  end 

  def add_planet(new_planet)
    @planets << new_planet 
  end
  
  def list_planets
    str = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, i|
      str.concat("\n #{i+1}. #{planet.name}")
    end 
    return str
  end 

  def find_planet_by_name(name)
    formatted_name = name.downcase.capitalize # doing this means that every newly instantiated planet name must be recorded in this case format: "Name"
    match = ""
    @planets.each do |planet|
      if formatted_name == planet.name
        match = planet
      end 
    end 
    return match
  end 

end 