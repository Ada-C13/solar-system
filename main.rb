require_relative 'planet'
require_relative 'solar_system'

def main
    solar_system = SolarSystem.new('Sol')
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    pluto = Planet.new('Pluto', 'varied, grey-orange', 1.30900e22, 5.906e9, 'Named after the Roman god of the underworld')
    solar_system.add_planet(earth) # add more planets
    solar_system.add_planet(pluto)
    
    puts "Welcome. Please choose from the following options: \n"
    options = "1: Add Planet \n2: Planet Details \n3: Exit \n"
    puts options
    
    while input = gets.chomp.downcase
        if input == "exit" || input == "3"
            break
        elsif input == "1" || input == "add planet" # needs to be separate method
            puts "Please enter details(name, color, mass_kg, distance_from_sun_km, fun_fact)"
            # planet_details = gets.chomp # etc, make array or hash?
            puts "Please enter planet name:"
            planet_name = gets.chomp.capitalize
            puts "Please enter planet color:"
            planet_color = gets.chomp
            puts "Please enter planet mass"
            planet_mass = gets.chomp
            puts "Please enter planet's distance from the sun:"
            planet_distance = gets.chomp
            puts "Please enter a fun fact about this planet:"
            planet_fact = gets.chomp
            new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fact)
            solar_system.add_planet(new_planet)

            p solar_system

            puts "What would you like to do next?\n"
            puts options
        elsif input == "2" || input == "planet details"
            puts "Please enter planet's name"
            planet_name = gets.chomp
            your_planet = solar_system.find_planet_by_name(planet_name)
            puts your_planet.summary

            puts "What would you like to do next?\n"
            puts options
        end
        
    end 

end

main