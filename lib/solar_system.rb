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
    result = ""
    planets.each_with_index {|v,index|
    result += "#{index+1}. #{v.name}\n"
    }
    return result 
  end

  def find_planet_by_name(planet_name)
    input = planet_name.downcase
    @planets.each do |planet|
      if planet.name.downcase == input
        return planet
      end 
    end 
  end 

  def distance_between(planet_a, planet_b)
    planet_a = planet_a.downcase
    planet_b = planet_b.downcase
    distance_a = 0
    distance_b = 0
    @planets.each do |planet|
      if planet.name.downcase == planet_a
        distance_a = planet.distance_from_sun_km
      end 
    end

    @planets.each do |planet|
      if planet.name.downcase == planet_b
        distance_b = planet.distance_from_sun_km
      end 
    end

    return (distance_a - distance_b).abs
  end 

end 