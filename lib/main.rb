require_relative "planet"

def main
  my_planet = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts my_planet.summary

end


main