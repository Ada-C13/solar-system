require_relative "planet"
require_relative "solar_system"

def main
	solar_system = SolarSystem.new("Sol")
	
	earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'the only planet known to support life')
	solar_system.add_planet(earth)

	mars = Planet.new('Mars', 'red', 6.39e23, 230.26e6, 'home to the largest volcano in the solar system, named Olympus Mons')
	solar_system.add_planet(mars)

	list = solar_system.list_planets

	return earth.summary, mars.summary, list
end

puts main