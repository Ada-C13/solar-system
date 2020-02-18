# Wave 1
require_relative 'planet'

def main

  earth = Planet.new('Earth', 
          'blue-green', 
          5.972e24, 
          1.496e8, 
          'Only planet known to support life')

  venus = Planet.new('Venus',
          'yellow-white',
          4.867e24,
          6.694e7,
          'second brightest natural object in the sky')

  puts earth.summary
  puts venus.summary
end

main

