class Planet
  attr_reader :color
  attr_accessor :name, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km,fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    unless @mass_kg > 0 && @distance_from_sun_km > 0
      raise ArgumentError, "You must provide valid numbers for planet mass and its distance from the sun"
    end
  end

  def summary 
    return "#{@name} is #{@color} in color and its distance from the sun is #{@distance_from_sun_km}km, and a piece of fun fact: #{@fun_fact}"
  end
end 
