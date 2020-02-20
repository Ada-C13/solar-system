require_relative 'planets'
require_relative 'solar_system'

#Enter a control loop that repeatedly asks the user what to do next. 
#The two options at this point are list planets and exit.
def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  venus = Planet.new('Venus', 'yellowish-white', 4.867e24 , 66.929, 'One day on Venus is longer than one year.')
  solar_system.add_planet(venus)

  puts "What would you like to do?"
  user_control = gets.chomp.downcase
 until user_control == "exit"

  case user_control
  when "list planets"
    list = solar_system.list_planets
    puts list
  when "planet details"
    puts "Which planet do you want details on?" 
    selected_planet = gets.chomp.downcase
    details = solar_system.find_planet_by_name(selected_planet).summary()
    puts details
  when "add planet"
    puts "What is the name of the planet that you want to add?"
    planet_name = gets.chomp.downcase
    puts "What is its color?"
    planet_color = gets.chomp.downcase
    puts "What about its weight?"
    planet_weight = gets.chomp.to_i
    puts "Do you know how far it is from the sun?"
    dis_sun = gets.chomp.to_i
    puts "Tell me one fun fact about #{planet_name}"
    fun_fact = gets.chomp.downcase

    new_planet = Planet.new(planet_name, planet_color, planet_weight, dis_sun, fun_fact)

    solar_system.add_planet(new_planet)

    puts "Here is your new planet, #{planet_name}."
  else 
    puts "Invalid entry."
  end
  
  puts "What would you like to do?"
  user_control = gets.chomp.downcase

end

# # => Earth
#   puts earth.fun_fact
# # => Only planet known to support life
# # => call summary
#   puts earth.summary()
#   list = solar_system.list_planets
#   puts list

# # Why do we puts in main but not in Planet#summary?

# found_planet = solar_system.find_planet_by_name('earth')

# # found_planet is an instance of class Planet
# puts found_planet
# # => #<Planet:0x00007fe7c2868ee8>

# puts found_planet.summary
# # => Earth is a blue-green planet ...

end
main
