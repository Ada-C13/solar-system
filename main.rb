require_relative 'planet'
require_relative 'solar_system'

solar_system = SolarSystem.new('Sol')

# method; creates two different instances of Planet and prints out some of their attributes.
# def main
#     earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#     mars = Planet.new('Mars', 'red', 0.65e24, 2.279e8, 'The only planet that humans can somewhat survive on (with the help of technology and science, of course)')
#     puts earth.summary
#     puts mars.summary
# end

# invoke method
# main

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
solar_system.add_planet(earth)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name('eArth')

# found_planet is an instance of class Planet
puts found_planet
puts found_planet.summary