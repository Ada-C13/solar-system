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
		planets_orbit = "Planets orbiting #{@star_name}."
    	@planets.each_with_index do |planet, index|
      	planets_orbit += "#{index + 1}: #{planet.name}"
		end
		return planets_orbit
  	end

	def find_planet_by_name(name)
		found = false
		@planets.each do |planet|
			if planet.name.downcase == name.downcase
				found = true
				return planet
			else 
				found = false
				end
			end
			if found == false 
		  	return "This is not a planet!"
			end
	end
end

