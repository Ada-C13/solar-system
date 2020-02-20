require_relative 'planet'
require_relative 'solar_system'

def add_new_planet
  puts "What planet would you like to add?"
  planet = gets.chomp.to_s.capitalize
  puts "What color is the planet?"
  color = gets.chomp.to_s.downcase
  puts "How much does the planet weigh in kg?"
  weight = gets.chomp.to_i
  puts "How far is your planet from the sun in km?"
  distance = gets.chomp.to_i
  puts "What is a fun fact about your planet?"
  fun_fact = gets.chomp.to_s
  planet_info = Planet.new(planet.to_s, color, weight, distance, fun_fact)
  return planet_info
end

def main 
  solar_system = SolarSystem.new('Sun')

  earth = Planet.new('Earth','blue-green', (5.972 * 10**24), (147.86 * 10**6), 'The only planet that can support life')
  mars = Planet.new('Mars', 'red', (6.39 * 10**23), (143.08 * 10**6), 'The tallest mountain known in the solar system is on Mars')
  venus = Planet.new('Venus', 'yellow', 4.867 * 10**24, 107.71 * 10**6, 'Venus is the second brightest natural object in the sky.'  )
  mercury = Planet.new('Mercury', 'blue', 3.285 * 10**23, 48.721 * 10**6,'A year on Mercury is just 88 days long.' )
  
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  solar_system.add_planet(mercury)

  user_input = " "
  until user_input == 'exit'
    puts "What would you like to do next? \n List planets, planet details, add planet, distance between planets, or exit?"
    user_input = gets.chomp.to_s.downcase

    case user_input
    when 'list planets'
      list = solar_system.list_planets
      puts list
    when 'planet details'
      puts "What planet would you like to learn about?"
      planet_choice = gets.chomp.to_s.capitalize
      found_planet = solar_system.find_planet_by_name(planet_choice)
      if found_planet.class == Planet
        puts found_planet.summary
      else 
        puts "That planet is not in this Solar System \n"
      end
    when 'add planet'
      solar_system.add_planet(add_new_planet)
    when 'distance between planets'
      puts "What is the first planet?"
      planet_1 = gets.chomp.downcase
      puts "What is the second planet?"
      planet_2 = gets.chomp.downcase
      puts solar_system.distance_between(planet_1, planet_2)
    when 'exit'
      exit
    else 
      puts "That is not a valid entry. Please try again \n"
    end
    
  end
  
end

main

