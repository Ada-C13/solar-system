require "pry"

class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name,color,mass_kg,distance_from_sun_km,fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    unless @mass_kg > 0 && @distance_from_sun_km > 0 
      raise ArgumentError,'mass and distance must be greather than 0'
    end 

  end 

  def summary
    return "#{@name} is #{@color}. have a mass in kg of #{@mass_kg}. The distance from sun is #{@distance_from_sun_km}km. #{@fun_fact}"
  end 

end 