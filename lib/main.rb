require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life'))
  solar_system.add_planet(Planet.new('Venus', 'yellow', 4.87e24, 1.082e8, 'Sometimes referred to as morningstar'))
  solar_system.add_planet(Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'It has two moons'))
choice = ""
  until (choice == "exit")
    choice = get_user_input
    perform_action(choice, solar_system)
  end


end

def get_user_input
  puts "\n***** AVAILABLE OPTIONS *****"
  puts "A. list planets."
  puts "B. lookup planet details"
  puts "C. add a planet"
  puts "D. calculate distance between two planets"
  puts "E. exit"
  print "What would you like to do? > "
  choice = gets.chomp
  return choice
end

def perform_action(action, solar_system)
  case action 
  when "A", "list planets"
    print "\n>>>>>>>"
    puts solar_system.list_planets
  when "B", "lookup planet details"
    lookup_planet(solar_system)
  when "C", "add a planet"
    add_planet
  when "D", "calculate distance between two planets"
    distance_between_two
  when "E", "exit"
    return "exit"
  else 
    puts "#{action} is not a valid operation. Please try again."
  end
end

def lookup_planet(solar_system)
  print "Enter planet name for lookup > "
  name = gets.chomp
  planet = solar_system.find_planet_by_name(name)
  if planet == nil 
    print "No planet with that name found. Try again, or 'quit' to return to main menu. >"
    until name == "quit"
      name = gets.chomp
    end
  end 

  puts "\n>>>>>>> Results for: #{name}"  
  puts planet.summary
end

def add_planet(solar_system)
end

def distance_between_two
  print "What's the first planet? > "
  first_planet = gets.chomp
  print "What's the second planet? > "
  second_planet = gets.chomp 
end


main