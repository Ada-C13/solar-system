# 
# Title  : Planet - Ada Cohort 13 - Space
# Author : Suely Barreto
# Date   : February 2020

class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass, dist, fact)
    @name = name
    @color = color
    @mass_kg = mass
    @distance_from_sun_km = dist
    @fun_fact = fact
  end
  
  def summary
    return "Fun fact about #{@name}: #{@fun_fact}."
  end

  def mass_lb
    return @mass_kg * 2.205
  end


end
