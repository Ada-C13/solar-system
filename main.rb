require_relative 'planet'
require_relative 'solar_system'

puts "Welcome to the Solar System Encyclopedia!"

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  pluto = Planet.new('Pluto', 'varied, grey-orange', 1.30900e22, 5.906e9, 'Named after the Roman god of the underworld')
  mercury = Planet.new('Mercury', 'yellow-blue', 3.285e23, 5.791e7, 'Mercury is the fasest planet. Completing a full circle around the sun in 88 days')
  venus = Planet.new('Venus', 'yellow', 4.867e24, 1.089e8, 'Venus is the hottest planet in our solar system')
  mars = Planet.new('Mars', 'red', 6.39e23, 1.496e8, 'It is suspected that billions of years ago mars was much warmer and had water')
  jupiter = Planet.new('Jupiter', 'white and red', 1.898e27, 7.779e8, 'Jupiter is almost twice as large as any other planet in the solar system')
  saturn = Planet.new('Saturn', 'yellow', 5.683e26, 1.433e9, 'Saturn has the largest and most complex rings of any planet in our solar system')
  uranus = Planet.new('Uranus', 'light blue', 8.681e25, 2.877e9, 'Uranus rotates at an almost 90-degree angle from the plane of its orbit')
  neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.503e9, 'Neptune was the first planet located through mathematical calculations')
  menu_selection = [1..9]
  all_planets = [earth, pluto, mercury, venus, mars, jupiter, saturn, uranus, neptune]
  solar_system = SolarSystem.new('Sol')
  solar_system.add_multiple_planets(all_planets)
  puts "-*-*- Main Menu -*-*-"
  puts "Please select what you would like to do:"
  puts "1. list planets"
  puts "2. planet details"
  puts "3. add planet"
  puts "4. calculate distance between two planets"
  puts "5. exit"
  puts "-*-*-*-*-*-*-*-*-*-*-"

  selection = gets.chomp.to_s.downcase
  options = ["list planets", "1", "planet details", "2", "add planet", "3", "calculate distance between two planets", "4", "exit", "5"]

  until options.include?(selection)
    puts "Please select what you would like to do:"
    puts "1. list planets"
    puts "2. planet details"
    puts "3. add planet"
    puts "4. calculate distance between two planets"
    puts "5. exit"
    selection = gets.chomp.to_s.downcase
  end

  if selection == "exit" || selection == "5"
    puts "Thank you for visiting the Solar System Encyclopedia!"
    exit
  elsif selection == "list planets" || selection == "1"
    puts solar_system.list_planets
    main
  elsif selection == "add planet" || selection == "3"
    add_planet(solar_system)
  elsif selection == "calculate distance between two planets" || selection == "4"
    distance_between(solar_system)
  else
    planet_details(solar_system)
  end
end

def planet_details(solar_system)
  puts "Which planet would you like to learn about? You can choose any planet orbiting our Solar System 'Sol'"
  puts solar_system.list_planets
  planet_selection = gets.chomp.to_s
  until solar_system.include?(planet_selection)
    puts "Which planet would you like to learn about? You can choose any planet orbiting our Solar System 'Sol'"
    puts solar_system.list_planets
    planet_selection = gets.chomp
  end
  chosen_planet = solar_system.find_planet_by_name(planet_selection)
  puts chosen_planet.summary
  main
end

def add_planet(solar_system)
  puts "Please enter the name of the planet:"
  name = gets.chomp
  puts "Please enter the color of the planet:"
  color = gets.chomp
  puts "Please enter the mass of the planet in kg:"
  mass = gets.chomp.to_i
    until mass > 0
      puts "That is not a valid mass. Please enter the mass for the planet in kg."
      detail = gets.chomp.to_i
    end
  puts "Please enter the distance of the planet from the sun in km:"
  distance = gets.chomp.to_i
    until detail > 0
      puts "That is not a valid distance. Please enter the distance of the planet from the sun in km."
      detail = gets.chomp.to_i
    end
  puts "Please enter a fact about the planet:"
  fact = gets.chomp
  solar_system.add_planet(Planet.new(name, color, mass, distance, fact))
  main
end

def distance_between(solar_system)
  puts "Please name the first planet:"
  planet_one = gets.chomp
  puts "Please name the second planet"
  planet_two = gets.chomp

  # until all_planets.include?()

  puts "The distance between #{planet_one} and #{planet_two} is: #{solar_system.distance_between(planet_one, planet_two)}km"
  main
end

main
