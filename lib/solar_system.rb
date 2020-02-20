# class definition for SolarSystem
class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet_instance)
    planets << planet_instance
    return planets
  end

  def list_planets
    string_output = "Planets orbiting #{star_name}"

    planets.each_with_index do |planet, i|
      string_output += "\n #{(i+1)}. #{planet.name}"
    end
    
    return string_output
  end

  def find_planet_by_name(string_input)
    planets.each do |planet|
      if planet.name.downcase == string_input.downcase
        return planet
      end
    end
    puts "There are no planets in this solar system called this name"
  end

  def distance_between(planet1, planet2)
    difference = (planet1.distance_from_sun_km) - (planet2.distance_from_sun_km)
    distance = difference.abs
    return "The distance between #{planet1.name} and #{planet2.name} is #{distance} km."
  end
end
