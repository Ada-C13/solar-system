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
    output = "Planets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, i|
      output = output + "#{i+1}. #{planet.name}\n"
    end
    return output
  end

  def find_planet_by_name(planet_name)
    found_planets = @planets.select { |planet| planet.name.downcase == planet_name.downcase}
    raise ArgumentError.new("Unable to find a planet with this name") unless found_planets.length > 0
    return found_planets
  end
  
end
