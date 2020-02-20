require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name, planets = [])
    @star_name = star_name
    @planets = planets
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    intro = "Planets orbiting #{@star_name}\n"
    list_string = ""
    @planets.each_with_index do |planet, i|
      list_string += "#{i + 1}. #{planet.name}\n"
    end
    return intro + list_string
  end

  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      return planet if planet.name == planet_name.capitalize
    end
  end

  #example from final from teachers
  # def find_planet_by_name(query)
  #   # Note: We can use planets, @planets, or self.planets
  #   first_found_planet = planets.find do |planet|
  #     planet.name.upcase == query.upcase
  #   end
  #   return first_found_planet
  #   # We return the first found planet, even if there's another matching one.
  #   # If there is no found planet, then we will return nil.
  # end

end
