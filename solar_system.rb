
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
    p "Planets orbiting #{@star_name}:"
    list = @planets.each_with_index do |planet, index|
      p "#{index + 1}. #{planet.name}"
    end
    return list
  end

  def find_planet_by_name(planet)
    @planets.each do |name|
      if name.name.downcase == planet.downcase
        puts name.summary
      # elsif name.name.downcase != planet.downcase
      #   p "That planet is not currently in our directory"
      end
    end
  end
end