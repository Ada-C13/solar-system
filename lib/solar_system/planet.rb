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
    "#{name.upcase}\nColor: #{color}\nMass: #{mass_kg}kg\nDistance from sun: #{distance_from_sun_km}km\nFun fact: #{fun_fact}"
  end
end