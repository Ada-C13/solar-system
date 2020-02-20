# 
# Title  : Planet - Ada Cohort 13 - Space
# Author : Suely Barreto
# Date   : February 2020

class Planet

  # A code that adds functionality to a class, like reader or writer methods
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  # Method for the Constructor, called automatically when a new instance of a class is created
  # Takes care of any initial setup. Any arguments passed to new will be passed to the constructor.
  def initialize(name, color, mass, dist, fact)
    @name = name
    @color = color
    @mass_kg = mass
    @distance_from_sun_km = dist
    @fun_fact = fact
  end
  
  def summary
    info = "Name = #{@name}\n" + 
           "Color = #{@color}\n" +
           "Mass = #{@mass_kg} Kg\n" +
           "Distance from Sun = #{@distance_from_sun_km} Km\n" +
           "Fun Fact = #{@fun_fact}\n"
    return info 
  end

end
