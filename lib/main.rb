require_relative "planet"
require_relative "solar_system"

def prompt_new_planet
  puts "Please input the name of the planet:"
  planet_name = gets.chomp.capitalize
  puts "Please input the color of the planet:"
  color = gets.chomp
  puts "Please input the weight of the planet:"
  weight = gets.chomp.to_f
  puts "Please input the distance of this planet from the sun:"
  distance = gets.chomp.to_f
  puts "Please input a fun fact of this planet"
  fun_fact = gets.chomp
  new_planet = Planet.new(planet_name, color, weight, distance, fun_fact)
  return new_planet
end

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  pluto = Planet.new('Pluto', 'varied, grey-orange', 1.30900e22, 5.906e9, 'Named after the Roman god of the underworld')
  mercury = Planet.new('Mercury', 'yellow-blue', 3.285e23, 5.791e7, 'Mercury is the fasest planet. Completing a full circle around the sun in 88 days')
  venus = Planet.new('Venus', 'yellow', 4.867e24, 1.089e8, 'Venus is the hottest planet in our solar system')
  mars = Planet.new('Mars', 'red', 6.39e23, 1.496e8, 'it is suspected that billions of years ago Mars was much warmer and had water')
  jupiter = Planet.new('Jupiter', 'white and red', 1.898e27, 7.779e8, 'Jupiter is almost twice as large as any other planet in the solar system')
  saturn = Planet.new('Saturn', 'yellow', 5.683e26, 1.433e9, 'Saturn has the largest and most complex rings of any planet in our solar system')
  uranus = Planet.new('Uranus', 'light blue', 8.681e25, 2.877e9, 'Uranus rotates at an almost 90-degree angle from the plane of its orbit')
  neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.503e9, 'Neptune was the first planet located through mathematical calculations')
  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  continue = true
  while continue == true
    options = ["List planets", "Planet details", "Add planet", "Exit"]
    
    puts "What do you what to do?"
    options.each_with_index do |option, i|
      puts "#{i + 1} #{option}"
    end
    choose = gets.chomp.to_i

    if choose == 1 # List planest
      list = solar_system.list_planets
      puts list
    elsif choose == 2 # Planet details
      puts "Which planet you want to know more about? Please provide its name:"
      planet_name = gets.chomp.capitalize
      planet = solar_system.find_planet_by_name(planet_name) 
      puts planet.summary
    elsif choose == 3 # Add planet
      created_new_planet = prompt_new_planet
      solar_system.add_planet(created_new_planet)
    elsif choose == 4 # Exit
      puts "See you next time!"
    end

    puts "Do you want to continue?[y/n]?"
    answer = gets.chomp.upcase
    if answer != "Y"
      continue = false
    end
  end
end


main
