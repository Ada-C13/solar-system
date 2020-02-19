class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
 
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = valid_mass(mass_kg)
    @distance_from_sun_km = valid_distance(distance_from_sun_km)
    @fun_fact = fun_fact
  end

  def valid_mass(mass_kg)
    raise ArgumentError, "0 is an invalid input" unless mass_kg.respond_to? (:greater) > 0 
  end

  def valid_distance(distance_from_sun_km)
    raise ArgumentError, "0 is an invalid input" unless distance_from_sun_km.respond_to? (:greater) > 0 
  end

  def summary
    return "The planet's name is#{@name}: and is recognizable by having a #{@color}: color. It weighing about #{@mass_kg}: kilograms and 
    #{@distance_from_sun_km}: kilometer from the sun. Fun fact about #{@name} is that #{@fun_fact}:."
  end
end