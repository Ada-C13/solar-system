
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
    list = "List of Planets orbiting the #{@star_name}: "
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
      return 2
    else
      return 0
    end
  end
end