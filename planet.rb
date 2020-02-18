class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_the_sun_km, :fun_fact

  def initialize(name, color,mass_kg, distance_from_the_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_the_sun_km = distance_from_the_sun_km
    @fun_fact = fun_fact
  end

  def summary
   return "#{@name} is #{@color} and weighs #{@mass_kg}kgs, while being
     #{@distance_from_the_sun_km} kms away from the sun. Little known fact
      is that #{@fun_fact}!"
  end
end
