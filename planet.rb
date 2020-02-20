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
    return "The planet #{@name} has the following attributes: color: #{@color}, size: #{@mass_kg} kg, distance from sun: #{@distance_from_sun_km} km, fun fact: #{@fun_fact}"
  end



end