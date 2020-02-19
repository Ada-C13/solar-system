class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg if mass_kg > 0
    @distance_from_sun_km = distance_from_sun_km if distance_from_sun_km > 0
    @fun_fact = fun_fact
  end

  def summary
    return "Name: #{name}, Color: #{color}, Mass: #{mass_kg} kg, Distance from the Sun: #{distance_from_sun_km} km, Fun fact: #{fun_fact}."
  end
end