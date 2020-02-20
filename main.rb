require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'awesome_print'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, "There was water????")
  uranus = Planet.new('Uranus', 'light-blue', 8.6810e25, 2.871e8, 'It turns on its axis once every 17 hours, 14 minutes')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(uranus)
  list = solar_system.list_planets
  puts list
  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary
  solar_system.distance_between('Earth', 'Mars')


  # build a command line interface (CLI) to allow a user to interact with your classes
  puts "------------------------------------"
  puts "Hi there, welcome to solar system!"
  puts "You have a couple options to begin with:\n1. List Planets \n2. Planet Details \n3. Add a planet \n4. Calculate Distance between two planets  \n5.Exit"
  options = gets.chomp.to_i 
  while options != 5
    case options 
    when 1
      puts solar_system.list_planets
    when 2
      puts "Which planet would you like to know more about?"
      user_choice = gets.chomp
      puts solar_system.find_planet_by_name(user_choice).summary
    when 3
      puts "please enter the name of planet"
      planet_name = gets.chomp
      puts "What color is it?"
      planet_color = gets.chomp
      puts "mass in kg?"
      planet_mass_kg = gets.chomp.to_i
      puts  "Distance from the sun in km?"
      planet_distance = gets.chomp.to_i
      puts "Any funfact about this planet?"
      planet_fun_fact = gets.chomp
      new_planet = Planet.new(planet_name, planet_color, planet_mass_kg, planet_distance, planet_fun_fact)
      solar_system.add_planet(new_planet)
    when 4
      puts "Please pick two planets"
      puts "Planet 1:"
      planet1 = gets.chomp
      puts "Planet 2:"
      planet2 = gets.chomp
      puts "Distance between #{planet1} and #{planet2} is #{solar_system.distance_between(planet1, planet2)}"
    else
      puts "invalid option, please try again!"
    end 

    puts "------------------------------------"
    puts "What would you like to do next?\n1. List Planets \n2.Planet Details \n3.Add a planet \n4. Calculate Distance between two planets  \n5.Exit"
    options = gets.chomp.to_i
  end 
end
main