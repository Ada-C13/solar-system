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

  user_choice = nil
  until user_choice = "exit"
    puts "You can see the current list of planets in your solar system ('LIST PLANETS'), "
    print "or see details on a specific planet ('DETAILS')."
    puts "To add another planet, please type 'ADD PLANET'."
    puts "To exit the program, please type 'EXIT'."
    user_choice = gets.chomp.upcase

    if user_choice = "LIST PLANETS"
      list = solar_system.list_planets
      puts list

    elsif user_choice = "DETAILS"
      puts "Which planet would you like to know more about?"
      user_planet_search = gets.chomp.downcase
      solar_system.find_planet_by_name(user_planet_search)

    elsif user_choice = "ADD PLANET"


    elsif user_choice = "EXIT"
      puts "#{solar_system.star_name} is supernova-ing your system."

    end


end

main