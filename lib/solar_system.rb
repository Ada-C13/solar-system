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
    list = "Planets orbiting #{@star_name}: "
    @planets.each_with_index do |planet, idx|
      list += "\n#{idx + 1}. #{planet.name}"
    end

    return list
  end

  def find_planet_by_name(find_planet)
    matching_planets = @planets.select { |current_planet| current_planet.name.casecmp(find_planet) == 0 }
    if matching_planets.length == 1
      return matching_planets.first
    elsif matching_planets.length > 1
      return "There are multiple planets with that name"
    else
      return "Theres no planets with that name"
    end
  end

  def distance_between(planet1, planet2)
    start_planet = find_planet_by_name(planet1)
    end_planet = find_planet_by_name(planet2)

    if start_planet.distance_from_sun_km > end_planet.distance_from_sun_km
      puts "#{planet1} is further than #{planet2}"
    end
  end
end