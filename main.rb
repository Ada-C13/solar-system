require_relative 'planet'
require_relative 'solar_system'


def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.42e23, 2.49e8, 'the second-smallest planet in the Solar System after Mercury')
  mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet in our Solar System.')
  venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet in the Solar System.')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')
  saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, "Saturn’s rings are made primarily of “water ice” mixed with dust and other chemicals.")
  uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
 
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)

  print "What would you like to do? Type 'list planets' to list planets or 'exit' to exit the program: "
  user_input = gets.chomp

  while user_input.downcase != "exit"
    puts "----------------------------------------"
   
    if user_input.downcase == "list planets"
      puts solar_system.list_planets
    elsif user_input.downcase == "planet details"
      puts solar_system.get_planet_details
    elsif user_input.downcase == "add planet"
      solar_system.create_and_add_planet_to_solar_system
    elsif user_input.downcase == "distance between"
      print "For planet #1: "
      planet_1 = solar_system.get_verified_planet_info
      print "For planet #2: "
      planet_2 = solar_system.get_verified_planet_info
      puts "----------------------------------------"
      puts "The distance between #{planet_1.name} and #{planet_2.name} is #{solar_system.distance_between(planet_1, planet_2)} km."
    else
      puts "sorry I don't know what you want me to do"
    end
    
    puts "----------------------------------------"
    print "What would you like to do next? You can type...\n-'list planets' to list planets\n-'exit' to exit the program\n-'add planet' to add a planet\n-'planet details' to learn more about a specific planet\n-'distance between' to get the distance between two planets\nYour choice: "
    user_input = gets.chomp
  end

end

main
