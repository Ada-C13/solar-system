
class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
 
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name.capitalize
    @color = color
    @mass_kg = valid_mass(mass_kg)
    @distance_from_sun_km = valid_distance(distance_from_sun_km)
    @fun_fact = fun_fact
  end

  # Check that planet's mass is no less than 0
  def valid_mass(mass_kg)
    if mass_kg <= 0 
      raise ArgumentError "0 is an invalid input"
    else 
      mass_kg.to_s
    end
  end

  # Check that planet's distance to the sun is not less than 0
  def valid_distance(distance_from_sun_km)
    if distance_from_sun_km <= 0
      raise ArgumentError "0 is an invalid input"
    else
      distance_from_sun_km.to_s
    end
  end

  # Display the planet's details
  def summary
    return "\nThe planet's name is #{@name}, it has a recognizable #{@color} color. 
    It weighs about #{@mass_kg} kilograms and is #{@distance_from_sun_km} kilometers from the sun. 
    Fun fact about #{@name}: #{@fun_fact}.\n"
  end
end