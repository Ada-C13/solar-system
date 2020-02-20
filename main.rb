
require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'Both of Mars’ poles are blanketed in ice')
  mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet in our Solar System.')
  venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet in the Solar System.')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')
  saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'Saturn’s rings are made primarily of “water ice” mixed with dust and other chemicals.')
  uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
  neptune = Planet.new('Neptune', 'dark blue', 1.02e26, 4.5e9, 'Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.')
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)
  
 
  option = ""
  until option == "exit"
    puts "Would you like to: list planets, planet details, add planet, or exit"
    option = gets.chomp.downcase

    if option == "list planets"
      list = solar_system.list_planets  
      puts list
    elsif option == "exit" 
        puts "Exiting the program..." 
    elsif option == "planet details"
      puts "What planet do you want to know about?"
      input_planet = gets.chomp.downcase
      puts solar_system.find_planet_by_name(input_planet).summary
    elsif option == "add planet"
      puts "What is the name of your planet"
      name = gets.chomp.capitalize
      added_planet = name.downcase
      puts "What is the color of your planet"
      color = gets.chomp.capitalize
      puts "What is the size of your planet in kg?"
      mass_kg = gets.chomp.to_i
      puts "what is the distance from the sun in km?"
      distance_from_the_sun = gets.chomp.to_i
      puts "What is a fun fact about your planet?"
      fun_fact = gets.chomp
      added_planet = Planet.new(name, color, mass_kg, distance_from_the_sun, fun_fact)
      solar_system.add_planet(added_planet)
      puts solar_system.find_planet_by_name(added_planet.name).summary
    else
        puts "Please enter valid input: \'list planets\', \'planet details\', \'add planet\' or \'exit\' "
    end
  end
end

main

