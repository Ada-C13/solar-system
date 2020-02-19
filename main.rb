require_relative 'planet'
require_relative 'solar_system'

def main


  solar_system = SolarSystem.new('Sun')

  mars = Planet.new("Mystic Mars", "brown", 1000000, 999999, "Mars has Monsters")
  saturn = Planet.new("Sasy Saturn", "pink", 12121212, 56565656, "Saturn likes Saterdays")

  solar_system.add_planet(mars)
  solar_system.add_planet(saturn)

  list = solar_system.list_planets
  puts list

end

main
