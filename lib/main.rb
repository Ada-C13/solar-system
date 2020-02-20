require_relative "planet.rb"
require_relative "solar_system.rb"

# instantiates instance of solar system & planets
def instantiate_sun_and_planets
  # instantiate solar system - add planets
  sun = SolarSystem.new("Sun")
  
  mars = Planet.new("Mars", "red", 6.4171e23, 230000000, "Mars has 2 moons: Phobos and Deimos")
  jupiter = Planet.new("Jupiter", "orange & brown", 1.8982e27, 778000000, "Jupiter has 79 known moons; its largest moon has a bigger diameter than Mercury")
  mercury = Planet.new("Mercury", "red", 0.330e24, 57e6, "Mercury has no moons 😢")
  venus = Planet.new("Venus", "yellow", 4.87e24, 108e6, "Venus has no moons 😢 ")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Earth has one singular and beautiful moon")
  
  # add planets to Sun
  sun.add_planet(mars)
  sun.add_planet(jupiter)
  sun.add_planet(mercury)
  sun.add_planet(venus)
  sun.add_planet(earth)
  
  return sun
end

# display/list choices to user
def get_choice
  puts "\nHere are your choices:\n1. List planets\n2. Get planet details\n3. Add a planet to the system\n4. Exit"
  print "\nSo what'll it be? ==> "
  user_choice = gets.chomp.downcase
  user_choice = valid_input(user_choice)
  return user_wants_to(user_choice)
end

# checks user input is a valid one
def valid_input(user_choice)
  valid_choice = ["1", "1.", "list", "list planets", "2", "2.", "get", "details", "get details", "get planet details", "3", "3.", "add", "add planet", "add a planet", "add a planet to the system", "add planet system", "4", "4.", "exit", "quit", "ex", "q"]
  
  until valid_choice.include? user_choice
    puts "That doesn't look like a valid choice..."
    puts "You can enter: list, details, add, exit"
    print "So what'll it be? ==> "
    user_choice = gets.chomp.downcase
  end
  
  return user_choice
end

# checks for positive number for mass and distance
def valid_number(user_number)
  user_number = gets.chomp.to_f
  until user_number > 0
    puts "We need a positive number here!"
    print "Please enter a number greater than 0 ==> "
    user_number = gets.chomp.to_f
  end
  return user_number.to_f
end

# returns a valid word to trigger control loop (used in get_choice method)
def user_wants_to(user_choice_parameter)
  case user_choice_parameter
  when "1", "1.", "list", "list planets"
    return "list"
  when "2", "2.", "get", "details", "get details", "get planet details"
    return "details"
  when "3", "3.", "add", "add planet", "add a planet", "add a planet to the system", "add planet system"
    return "add"
  when "4", "4.", "exit", "quit", "ex", "q"
    return "exit"
  end 
end

# method for adding a planet to the solar system (taking user input as arguments)
def user_added_planet
  print "What is this planet's name? ==> "
  name = gets.chomp
  
  print "\nWhat color is #{name}? ==> "
  color = gets.chomp
  
  print "\nWhat is #{name}'s mass? ==> "
  mass = valid_number(mass)
  
  print "\nHow far is #{name} away from the Sun? ==> "
  distance = valid_number(mass)
  
  print "\nWhat's a fun fact about #{name}? ==> "
  fun_fact = gets.chomp
  
  user_planet = Planet.new(name.capitalize, color, mass, distance, fun_fact)
  
  return user_planet
end

# main command line interface
def main
  sun = instantiate_sun_and_planets
  
  #INITIAL WELCOME
  puts "Welcome to our Super Solar System Simulator!"
  puts "You've got a few choices ahead of you..."
  
  user_choice = ""
  user_choice = get_choice

  # control loop
  until user_choice == "exit"
    
    while user_choice == "list"
      puts sun.list_planets
      user_choice = get_choice
    end
    
    while user_choice == "details"
      print "\nWhat planet do you want to know more about? ==> "
      user_planet = gets.chomp
      found_planet = sun.find_planet_by_name(user_planet)
      
      if found_planet == nil
        puts "#{user_planet} has yet to be discovered in our solar system."
      else
        puts found_planet.summary
      end
      
      user_choice = get_choice
    end
    
    while user_choice == "add"
      sun.add_planet(user_added_planet)
      
      puts "Cool! Thanks for adding that planet to our solar system!"
      
      user_choice = get_choice
    end
    
  end 
  puts "See you later!"
end

main