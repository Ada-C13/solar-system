require_relative 'lib/planet.rb'
require_relative 'lib/solar_system.rb'

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 753, 1.496e8, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')

  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)

  input = ""
  until input == "exit"
    puts "\nWhat would you like to do?"
    options = ["planet [details]", "[list] planets", "[add] planet", "[distance] between planets", "exit"]

    options.each_with_index do |option, i|
      puts "#{i + 1}. #{option}"
    end

    input = gets.chomp.downcase

    case input
      when "1", "details", "planet details"
        print "\nWhat planet do you want information on? "
        planet = solar_system.find_planet_by_name(gets.chomp)

        puts planet.respond_to?(:summary) ? planet.summary : planet
      
      when "2", "list", "list planets"
        puts "\n#{solar_system.list_planets}"

      when "3", "add", "add planet"
        info = {
          :name => "Planet Name: ",
          :color => "Color: ",
          :mass_kg => "Mass (kg): ",
          :distance_from_sun_km => "Distance from sun (km): ",
          :fun_fact => "Fun fact: "
        }
        
        puts "Please enter the following information:"

        info.each do |key, value|
          print value
          info[key] = gets.chomp
        end

        solar_system.add_planet(Planet.new(info[:name].capitalize, info[:color], info[:mass_kg].to_f, info[:distance_from_sun_km].to_f, info[:fun_fact]))
      
      when "4", "distance", "distance between", "distance between planets"
        planets = []

        2.times do |i|
          until planets[i].respond_to?(:summary)
            print "Planet #{i + 1}: "
            planets[i] = solar_system.find_planet_by_name(gets.chomp)
          end
        end

        puts "#{planets[0].name} and #{planets[1].name} are #{solar_system.distance_between(planets[0], planets[1])}km apart."
      
      when "5", "exit"
        input = "exit"
      
      else
        puts "That's not a valid option, please try again."
    end
  end
end

main