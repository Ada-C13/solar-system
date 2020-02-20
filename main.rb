# main.rb
require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sun")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red", 5.972e24, 1.496e8, "Could be teraformed")
  jupiter = Planet.new("Jupiter", "yellow", 5.972e24, 1.496e8, "Something something")
  mercury = Planet.new("Mercury", "grey", 5.972e24, 1.496e8, "Liquid silver")
  venus = Planet.new("Venus", "green", 5.972e24, 1.496e8, "Goddess planet")

  # TODO is there a simpler way to do this?
  # solar_system.add_planet(Planet.name)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)

  list = solar_system.list_planets

  found_planet = solar_system.find_planet_by_name("Earth")

  # found_planet is an instance of class Planet
  # puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  # puts found_planet.summary
  # => Earth is a blue-green planet ...

  # puts "#{earth.name}: is #{earth.fun_fact}."
  # puts "#{mars.name} is #{mars.fun_fact}."
end

main
