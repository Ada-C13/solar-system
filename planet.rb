class Planet

  attr_reader( :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact)

  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end


  def summary
    return "Planet Summary
    name: #{name} 
    color: #{color} 
    mass(kg): #{mass_kg} 
    distance from the sun(km): #{distance_from_sun_km} 
    fun fact: #{fun_fact}"
  end

end
