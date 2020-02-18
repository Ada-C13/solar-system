require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.42e23, 2.49e8, 'the second-smallest planet in the Solar System after Mercury')
  puts ".................."
  puts earth.summary
  puts mars.summary

 
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  list = solar_system.list_planets
  puts list
  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary

  puts "..."
  puts solar_system.distance_between(earth, mars)

end

main
