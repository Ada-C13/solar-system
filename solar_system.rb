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

  def which_planet_details 
    puts "What planet do you want to know about (Mars, or Saturn)?"
      user_planet_choice = gets.chomp
    if user_planet_choice.downcase == "mars" || user_planet_choice.downcase == "saturn"        
      found_planet = find_planet_by_name(user_planet_choice)
      puts found_planet.summary
    else
      puts "You did not input a valid response."
    end
  end

  def find_planet_by_name(name)
    @planets.each do|planet|
      if planet.name.downcase == name.downcase 
         return planet
      end
    end
  end

end 

