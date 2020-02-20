require_relative "planet"
require_relative "solar_system"

def ask_for_planet(solar_system)
  puts "Enter the name of the planet you wish to learn about?"
  asked_planet = gets.chomp
  found_planet = solar_system.find_planet_by_name(asked_planet)

  if found_planet
    return found_planet.summary
  else
    return "planet not found"
  end
end

def add_users_planet(solar_system)
  puts "Planet name:"
  planet_name = gets.chomp

  puts "Planet's color:"
  planet_color = gets.chomp

  puts "Planet's mass in kg:"
  planet_mass = gets.chomp.to_f

  puts "Distance from Sun in km:"
  distance_from_sun = gets.chomp.to_f

  puts "Fun fact:"
  fun_fact = gets.chomp

  new_planet = Planet.new(planet_name, planet_color, planet_mass, distance_from_sun, fun_fact)
  solar_system.add_planet(new_planet)

  return new_planet.summary
end

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "only planet known to support life")
  mars = Planet.new("Mars", "red", 6.39e23, 2.496e8, "red planet which is planned to be colonized by Ilon Mask")
  venus = Planet.new("Venus", "pink", 4.867e24, 3.496e8, "the second planet from the Sun")
  saturn = Planet.new("Saturn", "gray", 5.683e26, 4.496e8, "second largest planet in our solar system")

  solar_system = SolarSystem.new("Milky Way")

  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  solar_system.add_planet(saturn)
  solar_system.add_planet(earth)

  response = ""
  while response != "exit"
    puts "\nSelect from the options below:"
    puts "* list planets"
    puts "* planet details"
    puts "* add planet"
    puts "* exit"
    response = gets.chomp.downcase

    case response
      when "list planets"
        puts solar_system.list_planets
      when "planet details"
        puts ask_for_planet(solar_system)
      when "add planet"
        puts add_users_planet(solar_system)
      end
    end
end

main
