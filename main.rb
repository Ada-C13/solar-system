# main.rb
require_relative 'planet'

def main
  
  earth = Planet.new("Earth", "blue", (5.972 * 10**24), (1.479 * 10**6), "is 71% water.")
  mars = Planet.new("Mars", "red", (6.39 * 10**23), (2.303 * 10**6), "is the smallest planet in the solar system.")
  puts earth.summary
  puts mars.summary
  
end

main