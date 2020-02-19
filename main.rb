require_relative 'planet'
require_relative 'solar_system'


def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.42e23, 2.49e8, 'the second-smallest planet in the Solar System after Mercury')
  mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet in our Solar System.')
  venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet in the Solar System.')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')
  saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'Saturn\’s rings are made primarily of “water ice” mixed with dust and other chemicals.')
  uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
 
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)

  puts "Would you like to list the planets? Type 'list' to list planets or 'exit' to exit the program."
  user_input = gets.chomp

  while user_input.downcase != "exit"
    if user_input == "list"
      puts solar_system.list_planets
    elsif solar_system.planets.map { |planet| planet.name.downcase }.include?(user_input.downcase) 
      puts solar_system.find_planet_by_name(user_input).summary
    elsif user_input.downcase == "add"
      print "Please enter the name of the planet: "
      name = gets.chomp
      print "Please enter the color of the planet: "
      color = gets.chomp
      print "Please enter the mass of the planet in kg: "
      mass_kg = gets.chomp.to_f
      print "Please enter the distrance from the sun in km: "
      distance_from_sun_km = gets.chomp.to_f
      print "Please enter a fun fact about the planet: "
      fun_fact = gets.chomp 
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(new_planet)
    else
      puts "sorry I don't know what you want me to do"
    end
    puts "What would you like to do next? Type 'list' to list planets, 'exit' to exit the program, 'add' to add a planet, or a planet's name to learn more about the planet"
    user_input = gets.chomp
  end

end

main
