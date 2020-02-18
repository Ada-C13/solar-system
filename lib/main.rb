require_relative "planet"

def main
	
	earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'the only planet known to support life')
	mars = Planet.new('Mars', 'red', 6.39e23, 230.26e6, 'home to the largest volcano in the solar system, named Olympus Mons')

	return earth.summary, mars.summary
end

puts main

