require_relative 'planet'
require_relative 'solar_system'

def main

  earth = Planet.new('Earth', 
          'blue-green', 
          5.972e24, 
          1.496e8, 
          'Only planet known to support life')

  venus = Planet.new('Venus',
          'yellow-white',
          4.867e24,
          6.694e7,
          'second brightest natural object in the sky')

  puts earth.summary
  puts earth

  # Wave 2:  returning list
  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(venus)

  list = solar_system.list_planets
  puts list

  # finding planet by name
  found_planet = solar_system.find_planet_by_name('VenUs')
  puts found_planet
  puts found_planet.summary

end

main

