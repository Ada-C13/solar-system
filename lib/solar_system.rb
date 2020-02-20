require_relative "planet" 
class SolarSystem

  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(aPlanet)
    @planets.push(aPlanet)
  end

  def list_planets()
    formatted_string = "Planets orbiting #{@star_name} \n"
  
    i = 0
    @planets.each do |planet|
      #checking if object inside the array is in class Planet
      name = ''
      if planet.is_a? Planet
        name = planet.name
      elsif planet.is_a? String
        name = planet
      end
      planet_string = "#{i+1}. #{name} \n"
      formatted_string += planet_string
      i += 1
    end
     return formatted_string
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet.name.downcase == planet_name.downcase
        return planet  
      end
    end
    return nil
  end

  def distance_between (aPlanetName1, aPlanetName2)
    planet1 = self.find_planet_by_name(aPlanetName1)
    planet2 = self.find_planet_by_name(aPlanetName2)
    distance = (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
    return distance
  end
end