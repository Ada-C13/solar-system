require_relative 'planet'
require_relative 'solar_system'

def main


  solar_system = SolarSystem.new('Sun')

  mars = Planet.new("Mars", "brown", 1000000, 999999, "Mars has Monsters")
  saturn = Planet.new("Saturn", "pink", 12121212, 56565656, "Saturn likes Saterdays")

  solar_system.add_planet(mars)
  solar_system.add_planet(saturn)

  loop_value = "use loop"

  while loop_value == "use loop"
    puts "Type 'list' if you want a list of planets, type 'exit' if you would like to exit the program."
    user_input = gets.chomp
      if user_input.downcase == "list" || user_input.downcase == "exit"
        if user_input.downcase == "list"
          puts solar_system.list_planets
        else 
          loop_value = "stop loop"
        end
      else
        puts "You did not input a valid response."
        loop_value = "stop loop"
      end
  end


  # found_planet = solar_system.find_planet_by_name('sAturn')

  # puts found_planet.name
  # puts found_planet.summary

end

main
