class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact 

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name.upcase 
    @color = color 
    #raise "mass needs to be a number" if !mass_kg.instance_of?(Integer)
    @mass_kg = mass_kg
    #raise "distance needs to be a number" if !distance_from_sun_km.instance_of?(Integer)
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end 

  def summary()
    pretty_print = 
    "                 
    Name: #{@name} 
    Color: #{@color}
    Mass (Kg): #{@mass_kg}
    Distance from Sun (Km): #{@distance_from_sun_km}
    Fun Fact: #{@fun_fact}"

    return pretty_print
  end



end 