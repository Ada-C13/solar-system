# main.rb

require_relative 'planet'
require_relative 'solar-system'

def main

  # Create Instance of Solar System 
  solar_system = SolarSystem.new('Sun')

  # Create Instances of Planets
  neptune = Planet.new('Neptune', 'blue', 2781900000, 1.024e+26, 'its cold and scary.')
  venus = Planet.new('Venus', 'yellowish', 108212290.56, 4.867e+24, 'Lady Gaga has an absolute banger on her Artpop album also titled "Venus".')
  
  # Add planets to solar system 
  solar_system.add_planet(neptune)
  solar_system.add_planet(venus)
  
  # Display list 
  list = solar_system.list_planets
  puts list

  # Find matching planet name 
  found_planet = solar_system.find_planet_by_name('VENuS') 
  puts found_planet
  puts found_planet.summary

end 

main # invoke main 