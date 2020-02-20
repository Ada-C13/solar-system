require 'pry'

class SolarSystem
	attr_reader :star_name, :planets

	# Creates constructor for solar system attributes
	def initialize(star_name)
		@star_name = star_name
		@planets = []
	end

	# Adds a planet object to solar system
	def add_planet(planet)
		@planets << planet
	end

	# Lists out all planets in the solar system
	def list_planets()
		planets_list = @planets.each_with_index.map {|planet,index|
			"#{index + 1}. #{planet.name}"}
		planets_list.unshift("Planets orbiting #{@star_name}:\n").to_s
		
		return planets_list 
	end

	# Returns the planet object by name
	def find_planet_by_name(planet_name)
		@planets.detect {|planet| 
			planet.name.downcase.include? planet_name.downcase}
	end
	
	# Calculates the distance between two planets
	def distance_between(planet_one, planet_two)
		return (find_planet_by_name(planet_one).distance_from_sun_km - find_planet_by_name(planet_two).distance_from_sun_km).abs
	end
end

