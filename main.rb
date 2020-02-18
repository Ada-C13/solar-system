require 'pry'
require_relative 'planet'
require_relative 'solar_system'

def main 
	solar_system = SolarSystem.new('Sol')

	earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
	solar_system.add_planet(earth)

	venus = Planet.new('Venus', 'White', 6.392e24, 2.982e9, 'Sister planet to Earth')
	solar_system.add_planet(venus)

	list = solar_system.list_planets
	puts list

	found_planet = solar_system.find_planet_by_name('Earth')

	puts found_planet
	puts found_planet.summary()

	distance_btwn_planet = solar_system.distance_between('Earth','Venus')
end

puts main