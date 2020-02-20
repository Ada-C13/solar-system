class Planet
  # constructor
  # generate reader
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km  
    @fun_fact = fun_fact
  end
  def summary
    return "The #{name} is a wonderful place to live in. When seen from space you can see its beautiful color which is #{color}. 
    It weighs #{mass_kg} and is #{distance_from_sun_km} from the sun.
    #{fun_fact}."

  end


end


