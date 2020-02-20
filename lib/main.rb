
require_relative "solar_system"
require "awesome_print"

def main()
 #...do stuff with planets ...
 earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
 mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet within our Solar System.')
 venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet within the Solar System.')
 mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'Both of Mars’ poles are blanketed in ice.')
 jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet within our Solar System.')
 saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'Saturn’s rings are made primarily of “water ice” mixed with dust and other chemicals.')
 uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
 neptune = Planet.new('Neptune', 'dark blue', 1.02e26, 4.5e9, 'Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.')

 neptune = { 
   :name =>'Neptune', 
   :color => 'dark blue', 
   :weight =>1.02e26, 
   :distance => 4.5e9, 
   :fact => 'Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.'
 }

  # ap earth.summary
  # ap mercury.summary
  # ap venus.summary
  # ap mars.summary
  # ap jupiter.summary
  # ap saturn.summary
  # ap uranus.summary
  # ap neptune.summary
  
  # # solarsystem 4
  # solar_system = SolarSystem.new('Sol')

  # earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  # solar_system.add_planet(earth)
  # solar_system.add_planet(neptune)
  # solar_system.add_planet(saturn)
  
  # list = solar_system.list_planets
  # puts list

  # test_solarsystem = SolarSystem.new ("moon")
  # test_solarsystem.add_planet("mercury")
  # test_solarsystem.add_planet("venus")
  # test_solarsystem.add_planet("mars")
  # puts test_solarsystem.list_planets

  # # solarsystem 5
  # found_planet = solar_system.find_planet_by_name('Earth')
  # puts found_planet
  # puts found_planet.summary

  # found_planet = solar_system.find_planet_by_name('pluto')
  # puts found_planet

  # # solarsystem 6
  # puts "Distance #{solar_system.distance_between("EaRtH", "sAtuRN")}."

#**********************************************
## Wave 3

  milkyway_system = SolarSystem.new("milky_way")
  milkyway_system.add_planet(earth)
  milkyway_system.add_planet(mercury)
  milkyway_system.add_planet(venus)
  milkyway_system.add_planet(mars)
  milkyway_system.add_planet(jupiter)
  milkyway_system.add_planet(saturn)
  milkyway_system.add_planet(uranus)
  milkyway_system.add_planet(neptune)

  puts "Welcome to the Solar System. Let's get started."
  puts "Enter \"list\" to see the list of planets."
  puts "Enter \"details\" to see planet details."
  puts "Enter \"add\" to add your own planet and its details." 
  puts "Enter \"distance\" to get distance between two planets of your choice."
  puts "Otherwise, enter \"exit\" to quit."
  user_input = gets.chomp.downcase

  while user_input != "exit" do
    if user_input == 'list'
      puts "Here are the planets: #{milkyway_system.list_planets}."
    elsif user_input == 'details'
      puts "Enter the planet you want more details about."
      user_input = gets.chomp
      user_planet = milkyway_system.find_planet_by_name(user_input)
      while user_planet == nil do
        puts "Invalid input. Try again."
        user_input = gets.chomp
        user_planet = milkyway_system.find_planet_by_name(user_input)
      end
      puts "Here are your planet's details: #{user_planet.summary}."
    elsif user_input == "add"
      puts "Enter the name of your planet:"
      user_planet_name = gets.chomp.downcase
      puts "Enter the color of your planet:"
      user_planet_color = gets.chomp.downcase
      puts "Enter the mass in kilograms of your planet:"
      user_planet_mass_kg = gets.chomp.to_i
      puts "Enter your planet's distance from the sun in kilometers:"
      user_planet_distance_from_sun_km = gets.chomp.to_i
      puts "Enter a fun fact for your planet:"
      user_planet_fun_fact = gets.chomp
      user_planet = Planet.new(user_planet_name, user_planet_color, user_planet_mass_kg, user_planet_distance_from_sun_km, user_planet_fun_fact)
      milkyway_system.add_planet(user_planet)
    elsif user_input == "distance"
      puts "Enter the first planet."
      user_planet1 = gets.chomp.downcase
      puts "Enter the second planet."
      user_planet2 = gets.chomp.downcase
      distance = milkyway_system.distance_between(user_planet1, user_planet2)
      puts "This is the distance between your planets: #{distance}."
    else
      puts "Your input is invalid."
    end
    puts "Enter \"list\" to see the list of planets."
    puts "Enter \"details\" to see planet details."
    puts "Enter \"add\" to add your own planet and its details." 
    puts "Enter \"distance\" to get distance between two planets of your choice."
    puts "Otherwise, enter \"exit\" to quit."
    user_input = gets.chomp.downcase
  end
end

main()

