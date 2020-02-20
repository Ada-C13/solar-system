class Planet    
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact = "planet")
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary()
    return  "\n-#{@name} is #{@color}. \n-It weighs #{@mass_kg}, and resides #{@distance_from_sun_km} from the sun.\n-#{@fun_fact}\n"
  end
end