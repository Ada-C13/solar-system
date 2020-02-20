require_relative 'planet'
require_relative 'solar_system'


def main
  sun = SolarSystem.new('Sun')

  mars = Planet.new("Mars", "brown", 1000000, 999999, "Mars has Monsters")
  saturn = Planet.new("Saturn", "pink", 12121212, 56565656, "Saturn likes Saterdays")

  sun.add_planet(mars)
  sun.add_planet(saturn)

  loop_value = "use loop"

  while loop_value == "use loop"
    puts "Type 'list' if you want a list of planets, 'planet details' if you want the details on a planet, or type 'exit' if you would like to exit the program."
    user_input = gets.chomp

      if user_input.downcase == "list" || user_input.downcase == "exit" || user_input.downcase == "planet details"

        if user_input.downcase == "list"
          puts sun.list_planets
        elsif user_input.downcase == "planet details"
          puts sun.which_planet_details
        else 
          loop_value = "stop loop"
        end

      else
        puts "You did not input a valid response."
        loop_value = "stop loop"
      end
  end

end

main
