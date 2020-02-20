# main.rb

require_relative 'planet'
require_relative 'solar-system'

def add_planet_info()
  print "What is the name of the planet you'd like to add? "
  planet_name = gets.chomp.downcase.capitalize

  print "What is the planet's color? "
  planet_color = gets.chomp.downcase.capitalize
  print "How much does this planet weigh, in kg? "
  planet_weight = gets.chomp.downcase
  print "How far is this planet from the sun, in km? "
  planet_distance = gets.chomp.downcase
  print "What is a fun fact about this planet? "
  planet_fun_fact = gets.chomp.downcase 
  new_planet = Planet.new(planet_name, planet_color, planet_weight, planet_distance, planet_fun_fact)
  return new_planet
end 

def main

  # Create Instance of Solar System 
  solar_system = SolarSystem.new('Sun')

  # Create Instances of Planets
  venus = Planet.new('Venus', 'yellowish', 108212290.56, 4.867e+24, 'Lady Gaga has an absolute banger on her Artpop album also titled "Venus".')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
  neptune = Planet.new('Neptune', 'blue', 2781900000, 1.024e+26, 'its cold and scary.')

  # Add planets to solar system 
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(neptune)

  puts 
  puts "Welcome to the Solar System Program! You have four options: "
  puts " 1. If you would like to know which planets are currently in this system, please type 'list planets'"
  puts " 2. If you would like to learn about a specific planet in this system, please type 'planet info'"
  puts " 3. If you want to add a planet to this system, please type 'add planet'" 
  puts " 4. Or if you would like to quit this program, please type 'exit'"
  print "Which option would you like? "
  option = gets.chomp.downcase 

  
  case (option)

    when "list planets"
      puts solar_system.list_planets

    when "planet info"
      print "What is the name of the planet you'd like to know more about? "
      planet_choice = gets.chomp.downcase
      found_planet = solar_system.find_planet_by_name(planet_choice)
      puts found_planet.summary

    when "add planet"
      new_planet = add_planet_info()
      solar_system.add_planet(new_planet)
      puts "Cool! thanks for adding #{new_planet.name}. The updated planet list now looks like this: " + "\n" + "#{solar_system.list_planets}"
      
    when "exit"
      puts "Okay, bye!"

  end

end 

main # invoke main 