require_relative 'lib/planet.rb'
require_relative 'lib/solar_system.rb'

def main
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'red', 8.543e34, 5.643e9, 'The largest planet')

  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('earth')

  puts found_planet
end

main