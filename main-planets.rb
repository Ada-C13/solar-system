require_relative 'planets'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.name
  solar_system.add_planet(earth)

  def main
    solar_system = SolarSystem.new('Sol')
    venus = Planet.new('Venus', 'yellowish-white', 4.867e24 , 66.929, 'One day on Venus is longer than one year.')
    puts venus.name
    solar_system.add_planet(venus)
  
# => Earth
  puts earth.fun_fact
# => Only planet known to support life
# => call summary
  puts earth.summary()
  list = solar_system.list_planets
  puts list

# Why do we puts in main but not in Planet#summary?

found_planet = solar_system.find_planet_by_name('earth')

# found_planet is an instance of class Planet
puts found_planet
# => #<Planet:0x00007fe7c2868ee8>

puts found_planet.summary
# => Earth is a blue-green planet ...

end
main
