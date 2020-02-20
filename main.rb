require_relative 'planet'
require_relative 'solar_system'


def main
  sun = SolarSystem.new('Sun')

  mars = Planet.new("Mars", "brown", 1000000, 999999, "Mars has Monsters")
  saturn = Planet.new("Saturn", "pink", 12121212, 56565656, "Saturn likes Saterdays")

  sun.add_planet(mars)
  sun.add_planet(saturn)

  def add_new_planet
    puts "So, you want to add a planet. Well I need some info! What is it's name?"
    name = gets.chomp.to_s

    puts "What color is #{name.capitalize}?"
    color = gets.chomp.to_s

    puts "What is the mass in Kilograms of #{name.capitalize}?"
    mass_kg = gets.chomp.to_i

    puts "What is #{name.capitalize}'s distance from the sun in kilometers?"
    distance = gets.chomp.to_i

    puts "What is a fun fact about #{name.capitalize}?"
    fact = gets.chomp.to_s

    name = Planet.new(name, color, mass_kg, distance, fact)
    return name
  end


  loop_value = "use loop"

  while loop_value == "use loop"
    puts "What would you like to do: \n 1: List Planets\n 2: Planet Details\n 3: Add Planet\n 4: Exit"

    user_input = gets.chomp

    if user_input.downcase == "list planets" || user_input.downcase == "exit" || user_input.downcase == "add planet" || user_input.downcase == "planet details"
      if user_input.downcase == "list planets"
        puts sun.list_planets
      elsif user_input.downcase == "planet details"
        puts sun.which_planet_details
      elsif user_input.downcase == "add planet"
        sun.add_planet(add_new_planet)
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
