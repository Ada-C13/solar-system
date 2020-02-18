require 'colorize'

class SolarSystem 
  attr_reader :star_name, :planets 

  # constructor 
  def initialize(star_name)
    @star_name = star_name.capitalize 
    @planets = [] # instances of planets
  end 

  def add_planet(planet_instance) 
    # If we have the same planet name in our solar system, throw an error
    if @planets.include?(planet_instance)
      raise ArgumentError.new("\n==> This planet, #{planet_instance.name} already exists in our solar system.")
    end 

    @planets << planet_instance
  end 

  def list_planets
    output = "#{"Planets orbiting".bold} #{@star_name.bold}\n"

    @planets.each_with_index do |planet, i|
      output += "#{i + 1}. #{planet.name}\n"
    end

    return "#{output}"
  end 

  def find_planet_by_name(planet_name) 
    planet_name.capitalize!
    
    found_planet = @planets.filter do |planet|
      planet.name == planet_name
    end 

    # edge case 
    # if there is no planet with the given name, throw an error
    if found_planet.empty?     
      raise ArgumentError.new("\n==> The planet named, #{planet_name} is NOT found in our solar system.")
    end 

    # returns an instance of Planet
    return found_planet[0] 
  end 

  def distance_between(planet_one, planet_two) # => 2 planet names
    planet_one = find_planet_by_name(planet_one).distance_from_sun_km  
    planet_two = find_planet_by_name(planet_two).distance_from_sun_km 
    
    distance = (planet_one - planet_two).abs

    return distance
  end 
end 

