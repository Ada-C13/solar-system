class SolarSystem
	attr_reader :star_name, :planets

	def initialize(star_name)
		@star_name = star_name
		@planets = Array.new
	end

	def add_planet(planet)
		@planets << planet
	end

	def list_planets
		return "\nPlanets orbiting #{@star_name}:\n", 
		@planets.each_with_index.map do |planet, i|
			"#{i+1}. #{planet.name}"
		end
	end

	def find_planet_by_name(planet_name)
		raise ArgumentError.new("Argument must be a string") unless planet_name.is_a? String

		@planets.each do |planet|
			return planet if planet.name.downcase == planet_name.downcase
		end
	end
end