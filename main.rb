require_relative 'planet'
require_relative 'solar_system'
require 'pry'

def main
	solar_system = SolarSystem.new('Sol')
	mercury = Planet.new('Mercury', 'grey', 3.285e23, 2.987e7, 'It\'s the smallest planet this Solar System.')
	venus = Planet.new('Venus', 'yellow', 4.867e24, 6.694e7, 'Surface temperature on this planet can reach 471°C.')
	earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
	solar_system.add_planet(mercury)
	solar_system.add_planet(venus)
	solar_system.add_planet(earth)

	puts "Welcome to the #{ solar_system.star_name } solar system."
	puts "What would you like to do? 1. List planets 2. Planet details 3. Exit"
	
	response = gets.chomp.downcase
	if ["list planets", "list"].include?(response)
		puts solar_system.list_planets
	elsif ["planet details", "details"].include?(response)
		puts "What planet do you want to learn about?"
		found_planet = solar_system.find_planet_by_name(gets.chomp)
		puts found_planet.summary
	elsif response == "exit"
		abort("User has chosen to exit program.")
	end
end

main