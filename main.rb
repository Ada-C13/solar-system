require_relative 'planet'
require_relative 'solar_system'

def main
  mercury = Planet.new("Mercury", "Gray", 3.285e23, 57904197.12 ,"Mercury is named after the messenger of the Roman gods.")
  venus = Planet.new("Venus", "Pale Yellow", 4.867e24, 10821.23, "Venus is the second brightest natural object in the sky.")
  earth = Planet.new('Earth', 'Blue', 5.972e24, 1.496e8, "Only planet known to support life.")
  mars = Planet.new("Mars", "Reddish Brown",6.39e23 , 227883110.4, "Pieces of Mars have been found on Earth.")
  jupiter = Planet.new("Jupiter", "Orange", 1.898e27, 778600627.2, "Jupiter has at least 67 moons in satellite around the planet.")
  
  solar_system = SolarSystem.new("Sun") 
  
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("eArTh")
  puts "\n#{found_planet}"
  puts "\n#{found_planet.summary}"
end

main