require_relative "planet"
require "awesome_print"

def main
 #...do stuff with planets ...
 earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
 mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet within our Solar System.')
 venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet within the Solar System.')
 mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'Both of Mars’ poles are blanketed in ice.')
 jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet within our Solar System.')
 saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'Saturn’s rings are made primarily of “water ice” mixed with dust and other chemicals.')
 uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
 neptune = Planet.new('Neptune', 'dark blue', 1.02e26, 4.5e9, 'Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.')
#  pluto = Planet.new('Pluto', 'icy dwarfy gray', )
  
  ap earth.summary
  ap mercury.summary
  ap venus.summary
  ap mars.summary
  ap jupiter.summary
  ap saturn.summary
  ap uranus.summary
  ap neptune.summary

end

main

