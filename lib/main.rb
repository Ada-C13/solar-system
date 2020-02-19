require_relative "planet"
require_relative "solar_system"

def main
	solar_system = SolarSystem.new("Sol")
	
	mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'the smallest planet in our Solar System')
	solar_system.add_planet(mercury)

	venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'the hottest planet in our solar system')
	solar_system.add_planet(venus)

	earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'the only planet known to support life')
	solar_system.add_planet(earth)

	mars = Planet.new('Mars', 'red', 6.39e23, 230.26e6, 'home to the largest volcano in our solar system, named Olympus Mons')
	solar_system.add_planet(mars)

	jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'the largest planet in our solar system')
	solar_system.add_planet(jupiter)

	saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'a planet with rings, which are made primarily of "water ice" mixed with dust and other chemicals')
	solar_system.add_planet(saturn)

	uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'the coldest planet in our solar system')
	solar_system.add_planet(uranus)

	neptune = Planet.new('Neptune', 'dark blue', 1.02e26, 4.5e9, 'a planet with a distinct blue color, which is due to the absorption of red light by methane in the atmosphere')
	solar_system.add_planet(neptune)

	puts "Welcome to the Solar System Explorer!"
	
	loop do
		puts "\nWhat would you like to do? \n1) list planets \n2) exit"
		option = gets.chomp.downcase

		case option
			when "1", "list planets"
				list = solar_system.list_planets
				puts list
			when "2", "exit"
				break
		end
	end
end

main