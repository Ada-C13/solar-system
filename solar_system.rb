
require 'awesome_print'
require_relative 'planet'


class SolarSystem
  
  attr_reader :star_name, :planets
  def initialize(star_name)
    @star_name = star_name
    @planets = Array.new
  end

  def add_planet(planet)
    @planets.push(planet)
  end 

  def list_planets 
    i = 1
    list = "Planets orbiting #{star_name}:"
    @planets.each {|planet| 
      list += "\n#{i}. #{planet.name}"
      i += 1
    }
    return list
  end

  def find_planet_by_name(input_planet)
    @planets.each { |planet|
      if input_planet.capitalize == planet.name
        return planet 
      end
    }
  end 

end