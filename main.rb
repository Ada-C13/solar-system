# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  
  earth = Planet.new("Earth", "blue", (5.972 * 10**24), (1.479 * 10**8), "is 71% water.")
  mars = Planet.new("Mars", "red", (6.39 * 10**23), (2.303 * 10**8), "is the smallest planet in the solar system.")
  puts earth.summary
  puts mars.summary
  sol = SolarSystem.new("The Sun")
  sol.add_planet(earth)
  sol.add_planet(mars)
  puts sol.list_planets
  # earth2 = Planet.new("Earth", "blue", (5.972 * 10**24), (1.479 * 10**6), "is 71% water.")
  # sol.add_planet(earth2)
  # puts "Planets named mars: #{sol.find_planet_by_name("mars")}"
  # puts "Planets named earth: #{sol.find_planet_by_name("earth")}"
  # found_planet = sol.find_planet_by_name("mars")
  # puts found_planet.summary
  puts sol.distance_between("mars", "earth")

  
end

main