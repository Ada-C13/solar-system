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
    return "What do we know about #{name}?  It is #{color}.  It has a mass of #{mass_kg} kilograms.  #{name} is #{distance_from_sun_km} kilometers from the Sun.  Did you know that #{name} #{fun_fact}?  Pretty fascinating, right?"
  end

end