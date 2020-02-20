require_relative "planet"
require_relative "solar_system"


def main

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury','blue',3.285e23,4.809e7,"closest to sun")
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(mercury)
  user_input = ""

  while user_input != "exit"
    puts "COOL, you can choose the following 5 options:\n------\nexit\n------\nlist planets\n------\nplanet details\n------\nadd planet\n------\ndistance between\n------"
    user_input = gets.chomp.downcase
    if user_input == "list planets"
      puts solar_system.list_planets
    elsif user_input == "planet details"
      solar_system.planet_details
    elsif user_input == "add planet"
      solar_system.add_planet_by_user
    elsif user_input == "distance between"
      puts solar_system.list_planets
      puts "Enter the first planet"
      planet_a = gets.chomp.downcase
      puts "Enter the second planet"
      planet_b = gets.chomp.downcase
      puts "The distance between #{planet_a} and #{planet_b} is #{solar_system.distance_between(planet_a, planet_b)}"
    end 
  end 

end 

main



def wave_1_wave_2_part
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.summary

  solar_system = SolarSystem.new('Sol')

  solar_system.add_planet(earth)
  mercury = Planet.new('Mercury','blue',3.285e23,4.809e7,"closest to sun")
  solar_system.add_planet(mercury)


  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('eArth')
  puts found_planet

  puts found_planet.summary

  distance_between_earth_mercury = solar_system.distance_between('earth','mercury')
  puts "mercury and earth is #{distance_between_earth_mercury}"

end 




