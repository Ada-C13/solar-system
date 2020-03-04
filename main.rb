require_relative 'planet'
require_relative 'solarsystem'

#this method is used in the control loop if the user chooses to add a planet
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
  
  return Planet.new(name, color, mass, distance, fact)
end 

def planet_details(this_planet, solar_system)
  solar_system.planets.each do |planet|
    if this_planet == planet.name
    return planet.summary
    end 
  end
  return "This planet does not exist!"

end 


def main  
  #DISCLAIMER: this info is not accurate 
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life'))
  solar_system.add_planet(Planet.new('Venus', 'red', 1, 6, 'idk'))
  solar_system.add_planet(Planet.new('Mars', 'brown', 8, 10, 'aliens exist'))

  puts "
  what shall we do next (select a number or exit)?
  1. list planets
  2. planet details 
  3. add planet
  "
  input = gets.chomp.downcase

  while input != 'exit'
      if input == '1'
        puts solar_system.list_planets
        puts "
        what shall we do next (select a number or exit)?
          1. list planets
          2. planet details 
          3. add planet"
        input = gets.chomp
      elsif input == '2'

        puts "which planet?"
        this_planet = gets.chomp.upcase 
        puts planet_details(this_planet, solar_system)
        puts "
        what shall we do next (select a number or exit)?
          1. list planets
          2. planet details 
          3. add planet"
        input = gets.chomp
        
      elsif input == '3'
        solar_system.add_planet(new_planet)
        solar_system.planets.each do |planet|
          puts planet.summary
        end 
        puts "  
        what shall we do next (select a number or exit)?
          1. list planets
          2. planet details 
          3. add planet"
        input = gets.chomp
      end 
  end
  #should output place in memory
  #puts solar_system.find_planet_by_name("earth")
  #should return "did not find planet" because planet doesnt exist unless created in control loop
  #puts solar_system.find_planet_by_name("quin")
end

main()