require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'awesome_print'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, "There was water????")
  uranus = Planet.new('Uranus', 'light-blue', 8.6810e25, 2.871e8, 'It turns on its axis once every 17 hours, 14 minutes')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list
  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary
  solar_system.distance_between('Earth', 'Mars')
end 

main