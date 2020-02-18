class SolarSystem

	attr_reader :star_name, :planets

	def initialize(star_name)
		@star_name = star_name
		@planets = []
	end

	def add_planet(planet)
		@planets << planet.name
	end

	def list_planets
		planet_list = "Planets orbiting #{ @star_name }\n"
		@planets.length.times do |add|
			planet_list += "#{ add + 1 }. #{ @planets[add] }"
		end

		return planet_list
	end
end