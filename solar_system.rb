class SolarSystem

  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    return @planets << planet
  end

  def list_planets
    print "Planets orbiting #{self.star_name}\n"
    @planet_list = self.planets.each_with_index.map{ |planet, i| 
                    " #{ i += 1 }.#{ planet.name } " }
    return @planet_list
  end

  def find_planet_by_name(planet_name)
    return @planets.find{ |planet| planet.name == planet_name.capitalize}
  end
end