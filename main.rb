require_relative 'planet'
require_relative 'solar_system'
require 'BigDecimal'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'is the only planet known to support life')
  neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.477e9, 'is the farthest planet from the sun')

  puts "#{earth.summary} vs. #{neptune.summary}.\n\n"
end

# for having the program work as described in wave 3 the following line needs to be commented out:
main

solar_system = SolarSystem.new('Sun')

# I wonder if I could have stored these in a CSV file and looped throught for makeing the  news instances of Planet!
mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'smallest planet in our Solar System.')
venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'hottest planet in the Solar System.')
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'The Earth is the densest planet in the Solar System.')
mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'Both of Mars’ poles are blanketed in ice.')
jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')
saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'Saturn’s rings are made primarily of “water ice" mixed with dust and other chemicals.')
uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
neptune = Planet.new('Neptune', 'dark blue', 1.02e26, 4.5e9, 'Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.')

solar_system.add_planet(mercury)
solar_system.add_planet(venus)
solar_system.add_planet(earth)
solar_system.add_planet(mars)
solar_system.add_planet(jupiter)
solar_system.add_planet(saturn)
solar_system.add_planet(uranus)
solar_system.add_planet(neptune)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name('Mars')
puts "\nThe address of the planet your are looking for is: #{found_planet}"
puts found_planet.summary
distance = solar_system.distance_between('Mars', 'Uranus')
puts "The distance between Mars and Uranus is #{distance} in kilometers.\n"

answer = ""
while answer != "Q"
  print "\nThanks for trying out my solary system program. \nWhat would you like to do now?\nType \"L\" for a list of planets,\nType \"D\" if you want details about a specific planet, \nType \"P\" if you want to add a new planet or,\nType \"Q\" to exit:"
  answer = gets.chomp.upcase

  until ["Q", "L", "D", "P"].include?(answer)
    print "\nYour answer was not valid. \nWhat would you like to do now?\nType \"L\" for a list of planets,\nType \"D\" if you want details about a specific planet, \nType \"P\" if you want to add a new planet or,\nType \"Q\" to exit:"
    answer = gets.chomp.upcase
  end

  case answer
    when "L"
      puts list
    when "D"
      puts "\nthis is the list of the planets:"
      puts list
      puts "Which planet do you want information on? Please type out the name:"
      planet = gets.chomp.capitalize
      until ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"].include?(planet)
        print "\nYour answer was not valid. \nWhich planet do you want information on? Please type out the name:"
        planet = gets.chomp.capitalize
      end
      puts solar_system.find_planet_by_name(planet).summary
    when "P"
      puts "What is the name of this new planet?"
      name = gets.chomp.capitalize
      puts "What is the color of this new planet"
      color = gets.chomp.downcase
      puts "What is the mass of this planet in kilograms"
      mass_kg = gets.chomp.to_f
      puts "What is the distance of this planet from sun in kilometers"
      distance_from_sun_km = gets.chomp.to_f
      puts "what is a fun fact about your planet"
      fun_fact = gets.chomp
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(new_planet)
      list = solar_system.list_planets
      puts list
      puts new_planet.summary
    when "Q"
      exit
  end

end


