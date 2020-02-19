class SolarSystem
	attr_reader :star_name, :planets

	def initialize(star_name)
		@star_name = star_name
		@planets = Array.new
		@planet_num = 1
	end

	# take an instance of Planet as a parameter and add it to the list of planets
	def add_planet(planet)
		@planets << "#{@planet_num}. #{planet.name}"
		@planet_num += 1
	end

	# return (not puts) a string containing a list of all the planets in the system
	def list_planets
		return "Planets orbiting #{@star_name}:\n", @planets
	end
end
