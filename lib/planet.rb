class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_miles, :fun_fact


  def initialize(name, color, mass_kg, distance_from_sun_miles, fun_fact)
    @name = name
    @color = color
    @fun_fact = fun_fact
    mass_kg.to_i > 0 ? @mass_kg = mass_kg : raise(ArgumentError, "Mass is less than 0")
    distance_from_sun_miles.to_i > 0 ? @distance_from_sun_miles = distance_from_sun_miles : raise(ArgumentError, "Distance is less than 0")
  end

  def summary
    return "
    #{@name} is #{@distance_from_sun_miles}km from the sun and weighs #{@mass_kg}kg.
    The #{@name}'s color is #{color} and a fun fact is: #{@fun_fact}
    "
  end
end 