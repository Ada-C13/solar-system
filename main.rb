require_relative 'planet.rb'
require_relative 'solar_system.rb'
require 'awesome_print'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 100, 200, "It's red!!!")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list
end 

main