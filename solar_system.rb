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
      planet_string_list += "#{i+1}.  #{indiv_planet.name.capitalize}\n"
    end

    return planet_string_list
  end
  
  def find_planet_by_name(name)
    @planets.each do|planet|
      if planet.name.downcase == name.downcase 
        return planet
      end
    end
  end

  def which_planet_details
    puts "What planet do you want to know about (Mars, or Saturn, or one you created)?"
    user_planet_choice = gets.chomp

    return find_planet_by_name(user_planet_choice.downcase).summary

  end

end 

