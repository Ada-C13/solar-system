require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new('Sol')
  mercury = Planet.new("Mercury", "greyish", 3.30e23, 58000000, "Mercury is the smallest and innermost planet in the Solar System.")
  venus = Planet.new("Venus", "yellowish", 4.87e24, 108000000, "Venus is the second planet from the Sun." )
  earth = Planet.new("Earth", "blue", 5.97e24, 150000000, "Earth is where people live.")
  mars = Planet.new("Mars", "reddish", 6.42e23, 228000000, "Mars is called the 'Red Planet'.")

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  # list = solar_system.list_planets
  # puts list
  # found_planet = solar_system.find_planet_by_name('Mars')
  # puts found_planet
  # puts found_planet.summary

    puts "Let's learn some stuff about planets! Please choose one of the following options"
    puts "1. List Planets"
    puts "2. Add New Planet"
    puts "3. Exit\n\n"
    user_choice = gets.chomp
    case user_choice
    when "1"
      list = solar_system.list_planets
      puts list
      puts "For which of these planets would you like information?"
      choice = gets.chomp.capitalize
      puts "#{solar_system.find_planet_by_name(choice).summary}"
    when "2"
      print "Please enter the new planet name:    "
      name = gets.chomp.capitalize
      print "What is #{name}'s color?   "
      color = gets.chomp
      print "What is the mass of #{name} in kg?   "
      mass_kg = gets.chomp
      print "What is the #{name}'s distance from the sun in km?   "
      distance_from_sun_km = gets.chomp
      print "Can you tell me a fun fact about #{name}?    "
      fun_fact = gets.chomp
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(new_planet)
      puts
      puts new_planet.summary
    when "3"
      puts "Thanks for using our program"
      exit
    end
  end
  main