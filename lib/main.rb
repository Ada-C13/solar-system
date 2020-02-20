require_relative "solar_system/planet"
require_relative "solar_system/solar_system"

def welcome
  puts "Welcome to the Solar System app!"
  puts "================================"
end

def menu
  puts "\nWhat would you like to do next?"
  puts "Please, type the command number"
  puts "1: list all planets"
  puts "2: show planet detail"
  puts "3: add new planet"
  puts "4: exit"
end

def get_planet_detail(solar_system)
  print "\nEnter planet name: "
  input = gets.chomp
  found_planets = solar_system.find_planet_by_name(input)
  if found_planets.length == 0
    puts "Planet not found."
  else 
    found_planets.each do |planet|
      puts planet.summary
      puts "============================================="
    end
  end
end

def main
  welcome 

  solar_system = SolarSystem.new("Sun")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Home planet to human race.")
  earth_2 = Planet.new("Earth", "blue-green-2", 5.972e24, 1.496e8, "Duplicate Earth! Ha-ha!")
  tatooine = Planet.new("Tatooine", "brown-yellow", 6.4171e23, 23e7, "Though its proximity to the suns makes life difficult, it is located near key hyperspace routes, making it a smuggler and gangster haven.")
  
  solar_system.add_planet(earth)
  solar_system.add_planet(earth_2)
  solar_system.add_planet(tatooine)

  menu
  input = gets.chomp
  
  while input != "4"
    case input
    when "1"
      puts solar_system.list_planets
      menu
      input = gets.chomp
    when "2"
      get_planet_detail(solar_system)
      menu
      input = gets.chomp
    when "3"
      solar_system.create_planet
      menu
      input = gets.chomp
    when "4"
      break
    end
  end
end

main