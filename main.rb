require_relative 'planet'
require_relative 'solar_system'

def main


  solar_system = SolarSystem.new('Sun')

  mars = Planet.new("Mars", "brown", 1000000, 999999, "Mars has Monsters")
  saturn = Planet.new("Saturn", "pink", 12121212, 56565656, "Saturn likes Saterdays")

  solar_system.add_planet(mars)
  solar_system.add_planet(saturn)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('sAturn')

  puts found_planet.name
  puts found_planet.summary

end

main
