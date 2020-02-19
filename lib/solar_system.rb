class SolarSystem
	attr_reader :star_name, :planets

	def initialize(star_name)
		@star_name = star_name
		@planets = Array.new
	end

	# take an instance of Planet as a parameter and add it to the list of planets
	def add_planet(planet)
		@planets << planet
	end

	# return (not puts) a string containing a list of all the planets in the system
	def list_planets
		return "Planets orbiting #{@star_name}:\n", 
		@planets.each_with_index.map do |planet, i|
			"#{i+1}. #{planet.name}"
		end
	end

	# Create a method SolarSystem#find_planet_by_name, that takes the name of a planet as a string, and returns the corresponding instance of Planet. The lookup should be case-insensitive, so that Earth, earth and eArTh all return the same planet.
	def find_planet_by_name(planet)
		raise ArgumentError.new("Argument must be a string") unless planet.is_a? String
		
		# return planet if planet.downcase.instance_of? Planet
	end
end
