class SolarSystem

  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    print "Planets orbiting #{self.star_name}\n"
    @planet_list = self.planets.each_with_index.map{ |planet, i| " #{ i += 1 }.#{ planet.name } " }
    return @planet_list
  end

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