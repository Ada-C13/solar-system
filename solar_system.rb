require 'pry'

class SolarSystem
	attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact, :star_name, :planets

	def initialize(star_name)
		@star_name = star_name
		@planets = []
	end

	def add_planet(planet)
		@planets << planet
	end

	def list_planets()
		planets_string = @planets.each_with_index.map {|planet,index|
			"#{index + 1}. #{planet.name}"}
		planets_string.unshift("Planets orbiting #{@star_name}:\n")
		
		return planets_string 
	end

	def find_planet_by_name(planet_name)
		@planets.detect {|planet| planet.name.downcase.include? planet_name.downcase}
	end
	
	def distance_between(planet_one, planet_two)
		return (find_planet_by_name(planet_one).distance_from_sun_km - find_planet_by_name(planet_two).distance_from_sun_km).abs
	end
end

