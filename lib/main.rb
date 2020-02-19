require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  # instantiate solar system - add planets
  sun = SolarSystem.new("Sun")
  
  # instantiate and add planets
  mars = Planet.new("Mars", "red", 6.4171e23, 230000000, "has 2 moons: Phobos and Deimos")
  jupiter = Planet.new("Jupiter", "orange & brown", 1.8982e27, 778000000, "has 79 known moons; its largest moon has a bigger diameter than Mercury")
  mercury = Planet.new("Mercury", "red", 0.330e24, 57e6, "has no moons 😢 ")
  
  sun.add_planet(mars)
  sun.add_planet(jupiter)
  sun.add_planet(mercury)
  
  puts "What would you like to do? List planets or exit?"
  print "You can enter list or exit ==> "
  user_choice = gets.chomp.downcase
  
  if user_choice == "list"
    puts "#{sun.list_planets}"
  elsif user_choice == "exit"
    print "Ok, see you next time!"
    exit
  end
  # enter control loop that asks user what to do next
  # list planets OR exit
  
  
  
end

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











