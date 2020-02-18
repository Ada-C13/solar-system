class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact


  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "
    #{@name} is #{@distance_from_sun_km}km from the sun and weighs #{@mass_kg}kg.
    The #{@name}'s color is #{color} and a fun fact is: #{@fun_fact}
    "
  end
end