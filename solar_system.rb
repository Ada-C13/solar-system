class SolarSystem
  attr_reader :star_name, :planets
  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    @planets.sort_by! { |planet| planet.distance_from_sun_km}
  end
  
  def add_multiple_planets(planets)
    planets.each do |planet|
      @planets << planet
    end
    @planets.sort_by! { |planet| planet.distance_from_sun_km}
  end

  def list_planets
    list = "Planets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, index|
      list += "#{index + 1}. #{planet.name.to_s.capitalize}\n"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    planet_name = planet_name.capitalize
    planets.each do |item|
      if item.name == planet_name
        return item
      end
    end
  end

  def include?(planet)
    planet_strings = @planets.map {|index| index.name}
    if planet_strings.include?(planet.capitalize)
      return true
    else
      return false
    end
  end

  def distance_between(selection_one, selection_two)
    planet_one = self.find_planet_by_name(selection_one)
    planet_two = self.find_planet_by_name(selection_two)
    if planet_one.distance_from_sun_km > planet_two.distance_from_sun_km
      distance_between = planet_one.distance_from_sun_km - planet_two.distance_from_sun_km
    else
      distance_between = planet_two.distance_from_sun_km - planet_one.distance_from_sun_km
    end
    return distance_between
  end
end