require_relative 'planet'
require_relative 'solar_system'

def make_new_planet(solar_system)
  puts "Which planet would you like to add today?"
  name = gets.chomp.capitalize
  puts "Tell me the color of the planet that you added."
  color = gets.chomp
  puts "What is the planet's mass in kg?"
  mass_kg = gets.chomp.to_i
  puts "What is the distance of the planet from the sun (in km)?"
  distance_from_sun_km = gets.chomp.to_i
  puts "What is a fun fact about the planet?"
  fun_fact = gets.chomp
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  solar_system.add_planet(new_planet)
end

def main
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'The Earth is the densest planet in the Solar System.')
  venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet in the Solar System.')
  mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet in our Solar System.')
  mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'Both of Mars poles are blanketed in ice.')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')

  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(mercury)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)

  planet = true
  while planet
    puts "What do you want to do today..."
    puts "If you want to see a list of the planets that have been added: 'list planets'" 
    puts "If you want to exit from the program, type 'exit'"
    puts "If you want to learn for different planets type 'planet details'"
    puts "If you want to add your planet, type 'add planet'"
    user_input = gets.chomp
    if user_input == "list planets"
      puts "#{list = solar_system.list_planets}"
    elsif user_input == "exit"
      puts "Thank you! enjoy your day!"
      planet = false
    elsif user_input == "planet details"
      puts "Which planet would you like to learn about"
      string_input = gets.chomp
      found_planet = solar_system.find_planet_by_name(string_input)
      puts found_planet.summary
    elsif user_input == "add planet"
      make_new_planet(solar_system)
    end
  end
end

main






