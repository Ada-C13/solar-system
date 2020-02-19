require 'rake/testtask'

class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError if mass_kg < 1
    raise ArgumentError if distance_from_sun_km < 1

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{self.name} is the color #{self.color}, it weighs #{self.mass_kg} kg, is #{self.distance_from_sun_km} km from the sun, and a fun fact: #{self.fun_fact}." 
  end
end