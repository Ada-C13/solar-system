class SolarSystem
  attr_reader :star_name, :planets 

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet.name
  end

  def list_planets

    planet_string_list = "Planets orbiting #{@star_name} \n"
    @planets.each_with_index do |indiv_planet,i| 
      planet_string_list += "#{i+1}.  #{indiv_planet}\n"

    end
    
    return planet_string_list
  end

end

