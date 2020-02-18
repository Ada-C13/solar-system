class SolarSystem

	attr_reader :star_name, :planets

	def initialize(star_name)
		@star_name = star_name
		@planets = []
	end

	def add_planet(planet)
		@planets << planet
	end

	def list_planets
		planet_list = "Planets orbiting #{ @star_name }\n"
		@planets.length.times do |add|
			planet_list += "#{ add + 1 }. #{ @planets[add].name }"
		end

		return planet_list
	end

	def find_planet_by_name(planet_string)
		@planets.each do |planet|
			return planet if planet_string.casecmp?(planet.name)
		end
	end
end