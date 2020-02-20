class SolarSystem
  attr_reader :planets,:star_name
  attr_accessor :planet
  
  def initialize(star_name)
    @planets = Array.new
    @star_name = star_name
  end

  def add_planet(planet)
    @planets << planet
    p @planets
    p @planets[0].name
  end

  def list_planets
    list_planets = "Planets orbiting #{@star_name}:"
    @planets.each.with_index do |planet, index|
     list_planets += "\n#{index+1}. #{planet.name}" 
    end 
    return list_planets
  end


  def find_planet_by_name(planet_name)
    return @planets.select{|planet| planet_name.upcase == planet.name.upcase}[0]
  end  
  
  def distance_between(planet1, planet2)
    distance1 = find_planet_by_name(planet1).distance_from_sun_km
    distance2 = find_planet_by_name(planet2).distance_from_sun_km
    return (distance1 - distance2).abs
  end
end
