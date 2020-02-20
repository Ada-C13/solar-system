class SolarSystem

attr_reader :star_name, :planets

  def initialize(star_name)
  @star_name = star_name
  @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return @planets
  end

  def list_planets
    puts "Planets orbiting #{star_name}"
    planets_list =
    #"Planets orbiting #{star_name}:\n"
    # @planets.each_with_index(1) do |planet, index|
    #  planets_list =  "#{index}. #{planet.name}"
    @planets.map.with_index(1){|planet, index| "#{index}. #{planet.name}"}
    return planets_list
  end

  def find_planet_by_name(searched_planet)
    @planets.each do |planet|
      if planet.name.capitalize == searched_planet.capitalize
        return planet

  #   found_planet == planet_search.capitalize
  #  if @planets.include? planet_search
  #       return found_planet
  end
end
end
end