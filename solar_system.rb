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
    list = "Planets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, index|
      list += "\n#{index + 1}. #{planet.name}"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      return planet if planet.name == planet_name.capitalize 
    end
  end

  def distance_between(planet_1, planet_2)
    distance = 0
    distance_1 = 1
    distance_2 = 2
    @planets.each do |planet|
      if planet.name == planet_1.capitalize 
        distance_1 = planet.distance_from_sun_km
      elsif planet.name == planet_2.capitalize 
        distance_2 = planet.distance_from_sun_km
      end
    end

    if distance_1 > distance_2
      distance = distance_1 - distance_2
    else 
      distance = distance_2 - distance_1
    end
    return distance
  end 

end