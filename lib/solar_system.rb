class SolarSystem
  
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  
  # take an instance of Planet as a parameter and add it to the list of planets
  def add_planet(planet)
    @planets << planet 
  end
  
  # returns a string containing a list of all the planets in the system (format below class definition)
  def list_planets    
    planet_string_list = "Planets orbiting #{star_name}:"
    @planets.each_with_index do |planet, index|
      planet_string_list += "\n#{index + 1}: #{planet.name}"
    end
    return planet_string_list
  end
  

  def find_planet_by_name(planet_parameter) 
    planet_parameter = planet_parameter.downcase.capitalize
    found_planet = []
    
      @planets.each do |planet|
      if planet.name == planet_parameter
        found_planet << planet
      else
        return "#{planet} is not in #{@star_name}."
      end 

      if found_planet.length > 1
        # what should it do in case of more than one planet with the same name??
      else
        return found_planet[0]
      end
      
  end
  # found_planet = solar_system.find_planet_by_name('Mars')
end