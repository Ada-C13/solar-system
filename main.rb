require_relative 'planet'
require_relative 'solar_system'

def main 
  tatooine = Planet.new("Tatooine", "brown", 20, 100, "Home to Luke Skywalker")
  endor = Planet.new("Endor", "green", 22, 200, "The small moon that orbits it has Ewoks")
  coruscant = Planet.new("Coruscant", "black", 19, 300, "Was considered the most politcally important world in the galaxy at one point" )
  bespin = Planet.new("Bespin", "sunset", 10, 400, "A gas giant whose cities float in the clouds")

  solar_system = SolarSystem.new('Vēzos')
  solar_system.add_planet(tatooine)
  solar_system.add_planet(endor)
  solar_system.add_planet(coruscant)
  solar_system.add_planet(bespin)

  def add_planet(new_planet)
    name = new_planet

    puts "I need some more information about this new planet of yours:"
    puts "1. What color is it? "
    color = gets.chomp

    puts "2. What is the mass of the planet, in kg?"
    mass_kg = gets.chomp.to_i

    puts "3. How far is this planet from the sun, in km?"
    distance_from_sun_km = gets.chomp.to_i
    
    puts "4. Last question, do you any have any fun facts about this planet? (Y/N)"
    fun_fact = gets.chomp
    if fun_fact == "Y"
      puts "Okay! Give me a fun fact about #{new_planet_name}: "
      fun_fact = gets.chomp
    elsif  fun_fact != "Y"
      fun_fact = "There are no fun facts about this planet"
    end

    new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)

    return new_planet
  end

  user_choice = nil

  until user_choice == "EXIT"

    puts "\nTo see the current list of planets in your solar system, please type 'LIST PLANETS'."
    puts "To see details on a specific planet, please type 'DETAILS'."
    puts "To add another planet, please type 'ADD PLANET'."
    puts "To exit the program, please type 'EXIT'."
    user_choice = gets.chomp.upcase
    puts "\n"

    if user_choice == "LIST PLANETS"
      list = solar_system.list_planets
      puts list

    elsif user_choice == "DETAILS"
      puts "Which planet would you like to know more about?"
      user_planet_search = gets.chomp.downcase
      solar_system.find_planet_by_name(user_planet_search)

    elsif user_choice == "ADD PLANET"
      puts "What would you like to call your new planet?"
      new_planet_name = gets.chomp.capitalize
      nuevo_planeta = add_planet(new_planet_name)
      solar_system.add_planet(nuevo_planeta)

    elsif user_choice == "EXIT"
      puts "#{solar_system.star_name} has gone supernova and destroyed your system. Goodbye."

    end
  end

end

main