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
    return "Your planet name is #{@name}, has #{@color} color, it's #{@mass_kg} Kg, it's #{@distance_from_sun_km} far from sun. More fact for your planet:#{@fun_fact}"
  end
end

