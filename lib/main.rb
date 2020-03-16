require_relative 'planet'
require_relative 'solar_system'

def main
	solar_system = SolarSystem.new("Sol")
	
	mercury = Planet.new("Mercury", "red", 0.330e24, 57e6, "Mercury is the smallest planet in our Solar System")
	solar_system.add_planet(mercury)

	venus = Planet.new("Venus", "yellow", 4.87e24, 108e6, "Venus is the hottest planet in our solar system")
	solar_system.add_planet(venus)

	earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Earth is the only planet known to support life")
	solar_system.add_planet(earth)

	mars = Planet.new("Mars", "red", 6.39e23, 230.26e6, "Mars is home to the largest volcano in our solar system, named Olympus Mons")
	solar_system.add_planet(mars)

	jupiter = Planet.new("Jupiter", "blue-red", 1.898e27, 817e6, "Jupiter is the largest planet in our solar system")
	solar_system.add_planet(jupiter)

	saturn = Planet.new("Saturn", "pink", 5.69e26, 1.5e9, "Saturn\'s rings are made primarily of \"water ice\" mixed with dust and other chemicals")
	solar_system.add_planet(saturn)

	uranus = Planet.new("Uranus", "blue", 8.68e25, 3e9, "Uranus is the coldest planet in our solar system")
	solar_system.add_planet(uranus)

	neptune = Planet.new("Neptune", "dark blue", 1.02e26, 4.5e9, "Neptune is a planet with a distinct blue color, which is due to the absorption of red light by methane in the atmosphere")
	solar_system.add_planet(neptune)

	def planet_details_ui(solar_system)
		puts "\nWhat planet would you like to learn about?" 
		found_planet = solar_system.find_planet_by_name(gets.chomp)
		return found_planet.summary
	end

	def add_planet_ui(solar_system)
		puts "\nPlease enter the planet's name:"
		name = gets.chomp.capitalize
		puts "Please enter the planet's color:"
		color = gets.chomp
		puts "Please enter the planet's mass (kg):"
		mass_kg = gets.chomp.to_i
		puts "Please enter the planet's distance from the sun (km):"
		distance_from_sun_km = gets.chomp.to_i
		puts "Please enter a fun fact about the planet:"
		fun_fact = gets.chomp
		
		# The following line assigns each new planet to the variable new_planet, which is not ideal. I tried looking into how to dynamically set variable names in Ruby, but it seems like this functionality is too complex than it's worth here.
		new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact) 
		solar_system.add_planet(new_planet)

		return "\nThank you! #{name} has been added to #{solar_system.star_name}."
	end

	puts "Welcome to the Solar System Explorer!"
	
	loop do
		puts "\nWhat would you like to do? \n1) list planets \n2) planet details \n3) add planet \n4) exit"
		option = gets.chomp.downcase

		case option
			when "1", "list planets"
				puts solar_system.list_planets
			when "2", "planet details"
				puts planet_details_ui(solar_system)
			when "3", "add planet"
				puts add_planet_ui(solar_system)
			when "4", "exit"
				break
		end
	end
end

main