
class SolarSystem

  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  # Add planet to list of planets
  def add_planet(planet)
    @planets << planet
  end

  # List that displays all available planets and their star
  def list_planets
    puts "Planets that orbit the #{self.star_name} are:"
    @planet_list = self.planets.each_with_index.map{ |planet, i| " #{i += 1}.#{planet.name} " }
    return @planet_list
  end

  # Locate planet by name
  def find_planet_by_name(planet_name)
    input = planet_name.capitalize
    @planets.each do |planet|
      if input == planet.name
        return planet
      end
      return "Planet not found"
    end
  end

end