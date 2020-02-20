require_relative "planets"
require_relative "solar_system"

def add_planet_case(solar_system)
  puts "What is the name of the planet that you want to add?"
  planet_name = gets.chomp.downcase

  puts "What is its color?"
  planet_color = gets.chomp.downcase

  puts "What about its weight (in kg)?"
  weight = gets.chomp.to_i
  entered_int = Integer(weight) rescue false # check if user entered a bad value for a new planet's mass
  while entered_int == 0
    puts "Wrong weight. Try again." # prompt the user the an integer is entered
    weight = gets.chomp.to_i
    entered_int = Integer(weight) rescue false 
  end
  planet_weight = entered_int

  puts "Do you know how far it is from the sun?"
  distance = gets.chomp.to_i
  distance_int = Integer(distance) rescue false # validate that the input is always an integer
  while distance_int == 0
    puts "Invalid entery. Please try again." # prompt the user the an integer is entered
    distance = gets.chomp.to_i
    distance_int = Integer(distance) rescue false 
  end
  dis_sun = distance_int

  puts "Tell me one fun fact about #{planet_name}."
  fun_fact = gets.chomp.downcase
  # print out the new added planet
  new_planet = Planet.new(planet_name, planet_color, planet_weight, dis_sun, fun_fact)
  solar_system.add_planet(new_planet)
  puts "Here is your new planet, #{planet_name}."
end
 
def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(earth)

  venus = Planet.new("Venus", "yellowish-white", 4.867e24, 66.929, "One day on Venus is longer than one year.")
  solar_system.add_planet(venus)

  # Enter a control loop that repeatedly asks the user what to do next.

  puts "What would you like to do?"
  user_control = gets.chomp.downcase
  until user_control == "exit" # until user enters exit continue to prompt them
    case user_control
    when "list planets"
      list = solar_system.list_planets
      puts list
    when "planet details"
      puts "Which planet do you want details on?"
      selected_planet = gets.chomp.downcase
      found_planet = solar_system.find_planet_by_name(selected_planet)
      if found_planet == nil
        puts "Planet does not exist."
      else
        details = found_planet.summary() # give user the summary of the planet they want
        puts details
      end
    when "add planet"
      add_planet_case(solar_system)
    else
      puts "Invalid entry."
    end

    puts "What would you like to do?"
    user_control = gets.chomp.downcase
  end
end

main
