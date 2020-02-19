# main.rb
require_relative 'planet'
require_relative 'solar_system'

# def main
#     earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
#     puts earth.summary
# end
def main 
    solar_system = SolarSystem.new('Sol')

    mercury = Planet.new('Mercury', 'pink', 8.957e24, 0.496e8, 'planet that is hot')
    solar_system.add_planet(mercury)

    venus = Planet.new('Venus', 'gray', 2.972e24, 2.496e8, 'only planet that does not have any moons')
    solar_system.add_planet(venus)

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
    solar_system.add_planet(earth)

    
    mars = Planet.new('Earth', 'red', 3.972e24, 6.496e8, 'only planet that has thicker atmosphere')
    solar_system.add_planet(mars)

    jupiter = Planet.new('Jupiter', 'purple', 1.972e24, 4.496e8, 'only planet that is a great comet catcher')
    solar_system.add_planet(jupiter)

    list = solar_system.list_planets
    puts list
end 

main


# => Planets orbiting Sol
# => 1.  Earth



