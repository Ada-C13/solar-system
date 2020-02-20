class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    if !(planet.instance_of? Planet)
      raise ArgumentError.new("That is not a known planet.")
    end
    @planets << planet
  end

  def list_planets
    list = "Planets orbitting #{star_name}:\n"
    planets.each_with_index do |planet, i|
      list += "#{i+1}.  #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(name)
    found = planets.find_all { |planet| planet.name.upcase == name.chomp.upcase}
    if found.length == 1
      return found[0]
    elsif found.length > 1
      raise ArgumentError.new("This system has more than one planet of that name.")
    else
      return nil
    end
  end

  def distance_between(name1, name2)
    planet1 = find_planet_by_name(name1)
    planet2 = find_planet_by_name(name2)
    return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs()
  end
end