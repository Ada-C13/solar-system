require_relative 'planet.rb'

def main
  # do stuff with planets
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 100, 200, "It's red!!!"  )
  puts earth.summary
  puts mars.summary
end

main