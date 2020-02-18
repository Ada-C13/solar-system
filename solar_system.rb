class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    str_planets = "Planets orbiting #{self.star_name}"
    @planets.each_with_index do |planet, i|
      str_planets += "\n#{i+1}.  #{planet.name}"
    end
    return str_planets
  end

  def find_planet_by_name(name_of_planet)
    planets.each do |planet|
      if planet.name.downcase == name_of_planet.downcase
        return planet
      end
    end
  end

  def distance_between(planet_1, planet_2)
    return ( planet_1.distance_from_sun_km - planet_2.distance_from_sun_km ).abs
  end
end