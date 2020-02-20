require_relative 'planet'
require_relative 'solar_system'

def make_new_planet(solar_system)
  puts "What is the name of your planet?"
  name = gets.chomp.capitalize
  puts "What is the color of your planet?"
  color = gets.chomp
  puts "How big is your planet in kg?"
  mass_kg = gets.chomp
  while mass_kg.to_i.to_s != mass_kg
    puts "That is NOT a valid number. Please re-enter a number."
    mass_kg = gets.chomp
  end
  puts "What is the distance of your planet from the sun?"
  distance_from_sun_km = gets.chomp
    until distance_from_sun_km.to_i.to_s == distance_from_sun_km
    puts "That is NOT a number. Please re-enter a number."
    distance_from_sun_km = gets.chomp
    end
  puts "What is a fun fact about your planet?"
  fun_fact = gets.chomp
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  solar_system.add_planet(new_planet)
  return new_planet 
end

def main

  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
  solar_system.add_planet(earth)
  pluto = Planet.new('Pluto', 'purple', 6.546e33, 2.456e7, 'Pluto is purple - sounds good!')
  solar_system.add_planet(pluto)
  mars = Planet.new('Mars', 'red', 7.453e45, 1.345e5, 'Mars is red because I said!')
  solar_system.add_planet(mars)
  mercury = Planet.new('Mercury', 'dark gray', 3.235e33, 48.208e1, 'Mercury has wrinkles!' )
  solar_system.add_planet(mercury)
  venus = Planet.new('Venus', 'yellowish', 4.868e33, 108.900e3,  'One day on Venus is longer than one year!' )
  solar_system.add_planet(venus)

  continue = true
  while continue
    puts "Would you like to see the list of the planets? (type: list) or..."
    puts "Do you want to exit from the program? (type: exit)"
    user_input = gets.chomp
    if user_input == "exit"
      puts "Thank you! Bye!"
      continue = false
      break
    elsif user_input == "list"
      puts "#{solar_system.list_planets}"
      puts "Do you want to learn about the planets? (type: details}"
      puts "Do you want to add your own planet? (type: add)"
      user_input = gets.chomp
      if user_input == 'details'
        puts "Which planet would you like to know more about?"
        string_input = gets.chomp
        found_planet = solar_system.find_planet_by_name(string_input)       
        puts found_planet.summary
        break
      elsif user_input == "add"
        users_new_planet = make_new_planet(solar_system)
        puts users_new_planet.summary
        puts "Your planet #{users_new_planet.name} has been added to the solar system: #{solar_system.list_planets}"
        break


      end

    end
  
  end
end

main
