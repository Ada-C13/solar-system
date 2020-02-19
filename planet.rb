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
    if mass_kg <= 0 
      raise ArgumentError "0 is an invalid input"
    else 
      mass_kg.to_s
    end
  end

  def valid_distance(distance_from_sun_km)
    if distance_from_sun_km <= 0
      raise ArgumentError "0 is an invalid input"
    else
      distance_from_sun_km.to_s
    end
  end

  def summary
    return "The planet's name is #{@name}, it has a recognizable #{@color} color. 
    \nIt weighs about #{@mass_kg} kilograms and is #{@distance_from_sun_km} kilometers from the sun. 
    \nFun fact about #{@name}: #{@fun_fact}"
  end
end