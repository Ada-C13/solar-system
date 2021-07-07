# Title  : Solar System - Ada Cohort 13 - Space
# Author : Suely Barreto
# Date   : February 2020
# 
class SolarSystem

  # A code that adds functionality to a class, like reader or writer methods
  attr_reader :star_name, :planets

  # Method for the Constructor, called automatically when a new instance of a class is created
  # Takes care of any initial setup. Any arguments passed to new will be passed to the constructor.
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # Method to add more planets
  def add_planet(planet)
    @planets << planet
  end

  # Method to list the planets
  def list_planets
    list = "\nPlanets orbiting the #{@star_name}\n"
    @planets.each_with_index do |planet, index|
      list += "#{index + 1}. #{planet.name}\n"
    end
    return list
  end

  # Method to search for planets
  def find_planet_by_name(planet_name)
    found = @planets.select { |planet| planet.name.downcase == planet_name.downcase}
    if found.size == 0
      raise ArgumentError.new("No planets with this name.")
    end
    return found.first
  end

  # Method to calculate the distance between planets
  def distance_between(planet1_name, planet2_name)
    first  = find_planet_by_name(planet1_name)
    second = find_planet_by_name(planet2_name)
    distance = (first.distance_from_sun_km - second.distance_from_sun_km).abs
    return distance
  end

end
