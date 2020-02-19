require_relative 'planet'
require_relative 'solar_system'


def main
  solar_system = SolarSystem.new('Sol')
  
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  venus = Planet.new('Venus', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(venus)

  mercury = Planet.new('Mercury', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(mercury)

  mars = Planet.new('Mars', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(mars)

  jupiter = Planet.new('Jupiter', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(jupiter)
 
  list = solar_system.list_planets
  puts list 
end

main


