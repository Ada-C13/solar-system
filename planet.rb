class Planet 
  attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "This is #{@name}. #{@name} is #{@color}, weighs #{@mass_kg}kg, and is #{@distance_from_sun_km}km from the sun. #{@fun_fact}."
  end 

end



