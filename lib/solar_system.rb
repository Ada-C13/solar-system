# Title  : Solar System - Ada Cohort 13 - Space
# Author : Suely Barreto
# Date   : February 2020
# 
class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index do |planet, index|
      list += "#{index + 1}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    found = @planets.select { |planet| planet.name.downcase == planet_name.downcase}
    if found.size == 0
      raise ArgumentError.new("No planets with this name.")
    end
    return found.first
  end

end
