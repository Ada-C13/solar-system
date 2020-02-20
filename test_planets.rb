
require_relative 'planets.rb'
require_relative 'solar_system.rb'


# def main
#   # ... do stuff with planets ...
#   solar_system = SolarSystem.new('Sol')
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'Named after the Roman God of War')
#   mercury = Planet.new('Mercury', 'gray', 3.3011e23, 77e7, 'Has the shortest orbital period, 87.97 days')

#   solar_system.add_planet(earth)
#   solar_system.add_planet(mars)
#   solar_system.add_planet(mercury)

#   solar_system.list_planets
#   #puts list

#   solar_system.find_planet_by_name('Earth')

#   # found_planet is an instance of class Planet
#   #puts found_planet
#   # => #<Planet:0x00007fe7c2868ee8>

#   #puts found_planet
# end

# main

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 2.279e8, 'named after the Roman God of War')
  mercury = Planet.new('Mercury', 'gray', 3.3011e23, 77e7, 'has the shortest orbital period, 87.97 days')

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(mercury)

  puts "Great, we've added some planets."
  puts "Select the number of the action you would like to do next:"
  puts "1. List planets"
  puts "2. Explore planet details"
  puts "3. Add a planet"
  puts "4. Exit"
  
  user_input = gets.chomp.to_i

  if user_input == 1
    solar_system.list_planets
  elsif user_input == 2
    puts "Great! What planet would you like to learn about?"
    planet_to_search = gets.chomp
    solar_system.find_planet_by_name(planet_to_search)
  elsif user_input == 3
    puts "FUN! Let's do this. We'll need a few details, so let's get started."
    print "Name --> "
    planet_name = gets.chomp
    print "Color --> "
    planet_color = gets.chomp
    print "Mass (in kg) --> "
    planet_mass = gets.chomp.to_i
    print "Distance from sun (in km) --> "
    planet_distance = gets.chomp.to_i
    print "Fun fact --> "
    planet_fact = gets.chomp
    planet_name = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fact)
    solar_system.add_planet(planet_name)
    solar_system.list_planets
  elsif user_input == 4
    Exit
  end

  #solar_system.find_planet_by_name('Venus')

end

main