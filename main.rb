require_relative 'planet'
require_relative 'solarsystem'


def new_planet
  puts "what is the name of the planet?:"
  name = gets.chomp
  puts "what color is the planet?:"
  color = gets.chomp

  puts "what is the mass?:"
  mass = gets.chomp.to_f
    while mass <= 0.0
      puts "Enter a number, "
      puts "what is the mass as a number?:"
      mass = gets.chomp.to_f
    end 

  puts "what is the distance from the sun?:"
  distance = gets.chomp.to_i
    while distance <= 0.0
      puts "Enter a number, "
      puts "what is the distance from the sun?:"
      distance = gets.chomp.to_i
    end 
  puts "what is a fun fact about is planet?:"
  fact = gets.chomp 
  new_planet = Planet.new(name, color, mass, distance, fact)
  return new_planet
end 

def main

  earth = Planet.new('Earth', 'green', 5.5, 6.8, 'humans live here lol')
  venus = Planet.new('Venus', 'red', 1, 6, 'it is warm i think')
   mars = Planet.new('Mars', 'brow', 8, 10, 'aliens exist')
  
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)

  puts "what shall we do next"
  input = gets.chomp.downcase

  while input != 'exit'
      if input == 'list planets'
        puts solar_system.list_planets
        puts "what shall we do next"
        input = gets.chomp
      elsif input == 'planet details'
        puts "which planet?"
        this_planet = gets.chomp 
        puts this_planet.summary
      elsif input == 'add planet'
        solar_system.add_planet(new_planet)
        solar_system.planets.each do |planet|
          puts planet.summary
        end 
        puts "what shall we do next"
        input = gets.chomp
      end 
  end
end



main()