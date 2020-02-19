require_relative "planet.rb"
require_relative "solar_system.rb"

def user_wants_to(user_choice_parameter)
  valid_choice = ["1", "1.", "list", "list planets", "2", "2.", "details", "get details", "get planet details", "3", "3.", "add", "add planet", "add a planet", "add a planet to the system", "add planet system", "4", "4.", "exit", "quit", "ex", "q"]
  case user_choice_parameter
  when "1", "1.", "list", "list planets"
    return "list"
  when "2", "2.", "details", "get details", "get planet details"
    return "details"
  when "3", "3.", "add", "add planet", "add a planet", "add a planet to the system", "add planet system"
    return "add"
  when "4", "4.", "exit", "quit", "ex", "q"
    return "exit"
  end 
end

def user_adds_planet
  print "What is this planet's name? ==> "
  name = gets.chomp
  
  print "\nWhat color is #{name}? ==> "
  color = gets.chomp
  
  print "\nWhat is #{name}'s mass?"
  mass = gets.chomp.to_f
  
  print "\nHow far is #{name} away from the Sun? ==> "
  distance = gets.chomp.to_f
  
  print "\nWhat's a fun fact about #{name}? ==> "
  fun_fact = gets.chomp
  

  user_planet = Planet.new(name.capitalize, color, mass, distance, fun_fact)

  return user_planet
end


def main
  # instantiate solar system - add planets
  sun = SolarSystem.new("Sun")
  
  # instantiate and add planets
  mars = Planet.new("Mars", "red", 6.4171e23, 230000000, "has 2 moons: Phobos and Deimos")
  jupiter = Planet.new("Jupiter", "orange & brown", 1.8982e27, 778000000, "has 79 known moons; its largest moon has a bigger diameter than Mercury")
  mercury = Planet.new("Mercury", "red", 0.330e24, 57e6, "has no moons 😢 ")
  
  # add planets to Sun
  sun.add_planet(mars)
  sun.add_planet(jupiter)
  sun.add_planet(mercury)
  
  puts "Welcome to our Super Solar System Simulator!"
  puts "You've got a few choices ahead of you..."
  
  puts "\nHere are your choices:\n1. List planets\n2. Get planet details\n3. Add a planet to the system\n4. Exit"
  user_choice = gets.chomp.downcase
  
  until user_choice == "exit"
    user_choice = user_wants_to(user_choice)
    
    while user_choice == "list"
      puts sun.list_planets
      puts "\nHere are your choices:\n1. List planets\n2. Get planet details\n3. Add a planet to the system\n4. Exit"
      user_choice = gets.chomp.downcase
    end
    
    while user_choice == "details"
      print "\nWhat planet do you want to know more about? ==> "
      user_planet = gets.chomp
      found_planet = sun.find_planet_by_name(user_planet)
      puts found_planet.summary
      
      puts "\nHere are your choices:\n1. List planets\n2. Get planet details\n3. Add a planet to the system\n4. Exit"
      user_choice = gets.chomp.downcase
    end
    
    while user_choice == "add"
      sun.add_planet(user_adds_planet)

      puts "Cool! Thanks for adding that planet to our solar system!"

      puts "\nHere are your choices:\n1. List planets\n2. Get planet details\n3. Add a planet to the system\n4. Exit"
      user_choice = gets.chomp.downcase
    end
    
    if user_choice == "exit"
      puts "See you later!"
      exit
    end
    
    if user_choice == "invalid"
      puts "I did not understand that choice..."
      puts "See you later!"
      exit
    end

  end
  
end





# print "\nWhat planet should we add to our solar system? ==> "
#       user_added_planet = gets.chomp.downcase
#       user_added_planet = Planet.new(user_added_planet.capitalize) # how to pass the parameters here?
#       sun.add_planet(user_added_planet)
      
#       puts "\nHere are your choices:\n1. List planets\n2. Get planet details\n3. Add a planet to the system\n4. Exit"
#       user_choice = gets.chomp.downcase



# def main

#   # instantiate planets
#   mars = Planet.new("Mars", "red", 6.4171e23, 230000000, "has 2 moons: Phobos and Deimos")
#   jupiter = Planet.new("Jupiter", "orange & brown", 1.8982e27, 778000000, "has 79 known moons; its largest moon has a bigger diameter than Mercury")
#   mercury = Planet.new("Mercury", "red", 0.330e24, 57e6, "has no moons 😢 ")

#   # invoke summary of planets
#   puts mars.summary

#   puts jupiter.summary

#   puts mercury.summary

#   # instantiate solar system
#   solar_system = SolarSystem.new('Sol')

#   # add planets to solar system
#   solar_system.add_planet(mars)
#   solar_system.add_planet(jupiter)
#   solar_system.add_planet(mercury)

#   # list planets in solar system
#   list = solar_system.list_planets
#   puts list

#   # invoke find planets 
#   found_planet = solar_system.find_planet_by_name('Mars')

#   puts found_planet

#   puts found_planet.name

#   puts found_planet.summary

# end

main











