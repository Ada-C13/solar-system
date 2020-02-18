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
    if mass_kg > 0 
      return mass_kg
    else 
      raise ArgumentError
    end
  end

  def valid_distance(distance_from_sun_km)
    if distance_from_sun_km > 0
      return distance_from_sun_km
    else
      raise ArgumentError "Should I say somenthing"
    end
  end

  def summary
    return "The planet's name is#{@name}: and is recognizable by having a #{@color}: color. It weighing about #{@mass_kg}: kilograms and 
    #{@distance_from_sun_km}: kilometer from the sun. Fun fact about #{@name} is that #{@fun_fact}:."
  end

end