class Planet 
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact 
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError if mass_kg < 0 ||distance_from_sun_km < 0 
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Your planet's name is #{@name}, it's color is #{@color}, it's mass is #{@mass_kg} kg, it is #{@distance_from_sun_km} km from the Sun. A fact for your planet: #{@fun_fact}"
  end
end

