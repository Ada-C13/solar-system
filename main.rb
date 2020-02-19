require_relative 'planet'
require_relative 'solar_system'

def main
	# Establish solar system and some planets.
	solar_system = SolarSystem.new('Sol')
	mercury = Planet.new('Mercury', 'grey', 3.285e23, 2.987e7, 'It\'s the smallest planet this Solar System.')
	venus = Planet.new('Venus', 'yellow', 4.867e24, 6.694e7, 'Surface temperature on this planet can reach 471°C.')
	earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
	solar_system.add_planet(mercury)
	solar_system.add_planet(venus)
	solar_system.add_planet(earth)

	# Introduction and prompts user for next steps.
	puts "Welcome to the #{ solar_system.star_name } solar system."
	puts "What would you like to do? 1. List planets 2. Planet details 3. Add Planet 4. Exit"
	
	response = gets.chomp.downcase

	# List current planets in solar system list.
	if ["list planets", "list", "1.", "1"].include?(response)
		puts solar_system.list_planets
	# Shows user details about inputted planet.
	elsif ["planet details", "details", "2.", "2"].include?(response)
		puts "What planet do you want to learn about?"
		found_planet = solar_system.find_planet_by_name(gets.chomp)
		puts found_planet.summary
	# Allows user to add a planet to the solar system.
	elsif ["add planet", "add", "3.", "3"].include?(response)
		planet_details = {}
		puts "What is the name of the planet you want to add?"
		planet_details[:name] = gets.chomp.capitalize
		puts "What is the color of the planet?"
		planet_details[:color] = gets.chomp.downcase
		puts "What is the mass of the planet in kilograms?"
		planet_details[:mass_kg] = gets.chomp.to_i
		puts "What is the distance of the planet from the sun?"
		planet_details[:distance_from_sun_km] = gets.chomp.to_i
		puts "What's a fun fact about the planet?"
		planet_details[:fun_fact] = gets.chomp

		new_planet = Planet.new(planet_details[:name], planet_details[:color], planet_details[:mass_kg], planet_details[:distance_from_sun_km], planet_details[:fun_fact])
		solar_system.add_planet(new_planet)
		puts new_planet.summary
		puts solar_system.list_planets
	# Allows user to exit program.
	elsif ["exit", "4.", "4"].include?(response)
		abort("User has chosen to exit program.")
	# Exits user if no response is given.
	else
		abort("User has chosen to exit.")
	end
end

main