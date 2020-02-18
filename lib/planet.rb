class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact


  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @fun_fact = fun_fact
    mass_kg > 0 ? @mass_kg = mass_kg : raise(ArgumentError, "Mass is less than 0")
    distance_from_sun_km > 0 ? @distance_from_sun_km = distance_from_sun_km : raise(ArgumentError, "Distance is less than 0")
  end

  def summary
    return "
    #{@name} is #{@distance_from_sun_km}km from the sun and weighs #{@mass_kg}kg.
    The #{@name}'s color is #{color} and a fun fact is: #{@fun_fact}
    "
  end
end 