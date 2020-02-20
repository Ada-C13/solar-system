require_relative "planet"
require_relative "solar_system"


# Method "main" instantiates new SolarSystem object and populates it with Planet objects.
# Drives the loop that checks for user input or exit command. 
def main
  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life'))
  solar_system.add_planet(Planet.new('Venus', 'yellow', 4.87e24, 1.082e8, 'Sometimes referred to as morningstar'))
  solar_system.add_planet(Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'It has two moons'))

  choice = get_user_input
  until (choice == "EXIT")
    perform_action(choice, solar_system)
    choice = get_user_input
  end

end

# Method get_user_input prints menu of choices and collects user input.
# Returns a string representing the user's choice.
# Exits the program when prompted.
def get_user_input
  puts "\n***** MAIN MENU *****"
  puts "A. list planets."
  puts "B. lookup planet details"
  puts "C. add a planet"
  puts "D. calculate distance between two planets"
  puts "E. exit"
  print "What would you like to do? > "
  choice = gets.chomp

  if choice.upcase == "EXIT" || choice.upcase == "E"
    puts "user exiting..."
    return "EXIT"
  end

  return choice
end

# Method perform_action accepts two parameters.
# -action: the user's inputted choice.
# -solar_system: the solar system of interest that actions will be performed upon.
# Performs a user-specified action on the solar system object.
# Error checks for invalid action input. 
def perform_action(action, solar_system)
  case action.upcase
  when "A", "LIST PLANETS"
    print "\n>>>>>>> "
    puts solar_system.list_planets
  when "B", "LOOKUP PLANET DETAILS"
    lookup_planet(solar_system)
  when "C", "ADD A PLANET"
    add_planet(solar_system)
  when "D", "CALCULATE DISTANCE BETWEEN TWO PLANETS"
    distance_between_two(solar_system)
  else 
    puts "WARNING: #{action} is not a valid operation. Please try again."
  end
end

# Method lookup_planet prompts for planet name as user input 
# and returns the results in pretty format.
def lookup_planet(solar_system)
  print "Enter planet name for lookup > "
  name = gets.chomp
  planet = solar_system.find_planet_by_name(name)
  puts "\n>>>>>>> Results for: #{planet.name}"  
  puts planet.summary
end

# Method add_planet prompts for user input in order to 
# instantiate a new planet and add it to the solar system.
def add_planet(solar_system)

  planet_variables = ["name","color","mass (kg)","distance from sun (km)","fun fact"]
  new_planet_args = []

  puts ">>>>>>> ADDING NEW PLANET:"

  planet_variables.each do |variable|
    print "New planet #{variable} > "
    input = gets.chomp
    until valid_planet_arg?(input, variable)
      print "That's not valid input for the new planet's #{variable}. Try again > "
      input = gets.chomp
    end
    new_planet_args << input
  end
  solar_system.add_planet(Planet.new(*new_planet_args))
end 
 
# Method valid_planet_arg? is very basic input validation for creating a new planet.
# -input: the user-supplied value for a planet's variable
# -variable: the planet data that is being filled
def valid_planet_arg? (input, variable)
  case variable 
  when "name","color","fun fact"
    input = input.to_s 
    input.class == String ? true : false
  when "mass (kg)","distance from sun (km)"
    input = input.to_i / 1
    input > 0 ? true : false 
  end
end

# Method distance_between_two prompts for two planets as input and 
# calculates the distance between them, returning the value.
def distance_between_two(solar_system)
  print "What's the first planet? > "
  first_planet = solar_system.find_planet_by_name(gets.chomp)
  print "What's the second planet? > "
  second_planet = solar_system.find_planet_by_name(gets.chomp)
  puts ">>>>>>> The distance between #{first_planet.name} and #{second_planet.name}: #{solar_system.distance_between(first_planet,second_planet)} km"
end

main