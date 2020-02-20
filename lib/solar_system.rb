class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(inst_of_planet_class)
    @planets << inst_of_planet_class 
  end

  # Return the all the plantes we currently have in the @planets
  def list_planets
    planets_str = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, index|
      planets_str += "\n#{index +1}. #{planet.name}"
    end
    return planets_str
  end

  # Use planet's name to retreive the object (the planet)
  def find_planet_by_name(planet_name)
    planet_name = planet_name.capitalize
    @planets.each do |planet_info|
      if planet_info.name == planet_name
        return planet_info
      end
    end
    raise ArgumentError.new("No such planet")
  end

  def distance_between(planet_one, planet_two)
    # Call find_planet_by_name(planet_name) method (above)
   distance_one = find_planet_by_name(planet_one).distance_from_sun_km
   distance_two = find_planet_by_name(planet_two).distance_from_sun_km
   return (distance_one - distance_two).abs
  end
end
