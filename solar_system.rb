class SolarSystem
  attr_reader :star_name, :planets 

  def initialize(star_name, planets = [])
    @star_name = star_name
    @planets = planets
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    planet_string_list = "Planets orbiting #{@star_name} \n"

    @planets.each_with_index do |indiv_planet,i| 
      planet_string_list += "#{i+1}.  #{indiv_planet.name}\n"
    end

    return planet_string_list
  end

  def find_planet_by_name(name)
    @planets.each do|planet|
      until planet.name.downcase == name.downcase 
         return planet
      end
    end
    puts "YOU SHOULD NEVER SEE THIS"
  end

end 

