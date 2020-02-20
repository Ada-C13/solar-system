class SolarSystem
#constructor
attr_reader :star_name, :planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end
  # method for adding planets and pushing them into a new array called planets
  def add_planet(planet)
    @planets << planet
  end
  # new method for list of planets
  def list_planets()
    # loop through the planets array and give me the names of each planets
    planets_orbiting_sol = []
      planets.each do |planet|
        planets_orbiting_sol << planet.name
      end
      planets_orbiting_sol
  end
  # method for found_planets
  def find_planet_by_name(planet_name)
    @planets.each do |planet|
      if planet_name.upcase == planet.name.upcase
      return planet
      end
    end

  end

end
