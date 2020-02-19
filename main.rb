require_relative 'lib/planet.rb'
require_relative 'lib/solar_system.rb'

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')

  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)

  input = ""
  until input == "exit"
    puts "\nWhat would you like to do?
    1. planet [details]
    2. [list] planets
    3. [add] planet
    4. exit"

    input = gets.chomp.downcase

    case input
      when "1", "details", "planet details"
        print "\nWhat planet do you want information on? "
        planet = gets.chomp
        puts solar_system.find_planet_by_name(planet)
      when "2", "list", "list planets"
        puts "\n#{solar_system.list_planets}"
      when "3", "add", "add planet"
        puts "Please enter the following information:"

        print "Planet Name: "
        name = gets.chomp.capitalize

        print "Color: "
        color = gets.chomp

        print "Mass (kg): "
        mass_kg = gets.chomp.to_f

        print "Distance from sun (km): "
        distance_from_sun_km = gets.chomp.to_f

        print "Fun fact: "
        fun_fact = gets.chomp

        solar_system.add_planet(Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact))
      when "4", "exit"
        input = "exit"
      else
        puts "That's not a valid option, please try again."
    end

  end

  puts "Earth and Jupiter are #{solar_system.distance_between(earth, jupiter)}km apart"
end

main