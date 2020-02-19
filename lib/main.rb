require_relative "solar_system/planet"
require_relative "solar_system/solar_system"

def main
  solar_system = SolarSystem.new("Sun")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Home planet to human race.")
  # earth_2 = Planet.new("Earth", "blue-green-2", 5.972e24, 1.496e8, "Duplicate Earth! Ha-ha!")
  tatooine = Planet.new("Tatooine", "brown-yellow", 6.4171e23, 23e7, "Though its proximity to the suns makes life difficult, it is located near key hyperspace routes, making it a smuggler and gangster haven.")
  
  solar_system.add_planet(earth)
  # solar_system.add_planet(earth_2)
  solar_system.add_planet(tatooine)

  puts solar_system.list_planets

  found_planets = solar_system.find_planet_by_name("earth")
  puts found_planets

  found_planets.each do |found_planet|
    puts found_planet.summary
  end

end

main
