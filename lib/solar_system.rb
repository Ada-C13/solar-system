class SolarSystem
	attr_reader :star_name, :planets

	def initialize(star_name)
		@star_name = star_name
		@planets = Array.new
		@planet_num = 1
	end

	# take an instance of Planet as a parameter and add it to the list of planets
	def add_planet(planet)
		@planets << planet.name
	end
end
