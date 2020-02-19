require_relative 'planet'
require_relative 'solar_system'

def main 
  earth = Planet.new('Earth','blue-green', (5.972 * 10**24), (147.86 * 10**6), 'The only planet that can support life')
  mars = Planet.new('Mars', 'red', (6.39 * 10**23), (143.08 * 10**6), 'The tallest mountain known in the solar system is on Mars')
  puts mars.summary
end

main

