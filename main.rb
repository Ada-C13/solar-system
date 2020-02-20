require_relative "planet"
require_relative "solar_system"
require "pry"

def main()

  our_ss = SolarSystem.new("Sol")

  mercury = Planet.new("Mercury", "dark gray", "3.285 × 10^23 kg", "48.091 million km", "Calvin from Calvin and Hobbes did a lightning talk about the planet Mercury.")

  venus = Planet.new("Venus", "ochre", "4.867 × 10^24 kg", "107.73 million km", "One day on Venus lasts 243 days on Earth.")


  our_ss.add_planet(mercury)
  our_ss.add_planet(venus)
end

main()
list_planets