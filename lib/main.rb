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


# Method get_user_input is a helper method for main that prints menu of choices and collects user input.
# Returns a string representing the user's choice.
def get_user_input
  puts "\n***** AVAILABLE OPTIONS *****"
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

def perform_action(action, solar_system)
  case action
  when "A", "list planets"
    print "\n>>>>>>> "
    puts solar_system.list_planets
  when "B", "lookup planet details"
    lookup_planet(solar_system)
  when "C", "ADD A PLANET"
    add_planet(solar_system)
  when "D", "CALCULATE DISTANCE BETWEEN TWO PLANETS"
    distance_between_two(solar_system)
  else 
    puts "WARNING: #{action} is not a valid operation. Please try again."
  end
end

def lookup_planet(solar_system)
  print "Enter planet name for lookup > "
  name = gets.chomp
  planet = find_planet_with_catch(name, solar_system)
  puts "\n>>>>>>> Results for: #{planet.name}"  
  puts planet.summary
end

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

def distance_between_two(solar_system)
  print "What's the first planet? > "
  first_planet = find_planet_with_catch(gets.chomp, solar_system)
  print "What's the second planet? > "
  second_planet = find_planet_with_catch(gets.chomp, solar_system)
  puts "The distance between #{first_planet.name} and #{second_planet.name}: #{solar_system.distance_between(first_planet,second_planet)} km"
end

def find_planet_with_catch(name, solar_system)
  planet = solar_system.find_planet_by_name(name)
  while planet == nil 
    print "No planet with that name found. Try again. > "
    name = gets.chomp
    planet = solar_system.find_planet_by_name(name)
    end
  return planet
end


main