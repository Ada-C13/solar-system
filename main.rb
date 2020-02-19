
require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  mars = Planet.new('Mars', 'red', 5.972e24, 1.496e8, 'None of this is true for Mars')
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  # puts list

  found_planet = solar_system.find_planet_by_name('Earth')

  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
  # => Earth is a blue-green planet ...
end

main
