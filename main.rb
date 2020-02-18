require_relative 'lib/planet.rb'

def main
  earth = Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life')

  jupiter = Planet.new('Jupiter', 'red', 8.543e34, 5.643e9, 'The largest planet')

  puts earth.summary
  puts jupiter.summary
end

main