#!/usr/bin/ruby
# 
# Title  : Planet - Ada Cohort 13 - Space
# Author : Suely Barreto
# Date   : February 2020
# 
require_relative "planet"
require_relative "solar_system"


def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.name  # => Earth
  puts earth.fun_fact  # => Only planet known to support life
  puts "The #{earth.name} has a mass of #{earth.mass_kg}Kg or #{earth.mass_lb}lb."
  puts earth.color
  # earth.color = 'pink' # => NoMethodError: undefined method `color=' for #<Planet:0x00007fcfba04c130>
  # puts earth.color

  solar = SolarSystem.new("Sun")
  solar.add_planet(earth)
  puts solar.list_planets 

  found_planet = solar.find_planet_by_name("eArth")
  puts found_planet
  puts found_planet.summary
end

main
