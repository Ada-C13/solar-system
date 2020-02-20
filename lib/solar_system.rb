class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @planets = []
    @star_name = star_name
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list_of_planets = "Planets orbiting #{star_name}\n"
    planets.length.times do |count|
      list_of_planets += "#{count+1}. #{planets[count].name}\n"
    end
    return list_of_planets
  end

  def find_planet_by_name(name)
    match = planets.find { |planet| planet.name.upcase == name.upcase }
    while match == nil 
      print "No planet with that name found. Try again. > "
      name = gets.chomp
      match = planets.find { |planet| planet.name.upcase == name.upcase }
    end
    return match
  end

  def distance_between(planet1, planet2)
    return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
  end

end
