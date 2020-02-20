class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end


  def add_planet(planet)
    @planets << planet
    return @planets
  end

  def list_planets
    string = "Planets orbiting #{@star_name} \n"
    @planets.each_with_index do |planet, i|
      string += " #{i + 1}: #{planet.name}\n"
    end
    return string
  end

  def find_planet_by_name(string_name)
    message = "That is NOT a planet in this program!"
    planets.each do |planet|
      if planet.name.downcase == string_name.downcase
        return planet 
      end
    end
    return message
  end
end