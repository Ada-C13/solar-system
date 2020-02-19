require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "only planet known to support life")
  mars = Planet.new("Mars", "red", 5.972e24, 1.496e8, "red planet colonized by Ilon Mask")
  mercury = Planet.new("Mercury", "purple", 5.972e24, 1.496e8, "closest to the Sun")
  venus = Planet.new("Venus", "pink", 5.972e24, 1.496e8, "just a nice planet")
  saturn = Planet.new("Saturn", "gray", 5.972e24, 1.496e8, "huge planet")
  
  puts earth.summary

  puts

  solar_system = SolarSystem.new("Milky Way")

  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(saturn)

  list = solar_system.list_planets
  puts list

  puts

  found_planet = solar_system.find_planet_by_name("VENUS")
  puts found_planet

  puts found_planet.summary

end

main