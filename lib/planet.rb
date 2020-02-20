class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_miles, :fun_fact


  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    if mass_kg.to_i <= 0
      raise ArgumentError.new("Mass of the planet needs to be a number greater than 0")
    elsif distance_from_sun_km.to_i <= 0
      raise ArgumentError.new("Distance from the sun needs to be a number greater than 0")
    end

    @name = name
    @color = color
    @fun_fact = fun_fact
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
  end

  def summary
    return "
    #{@name} is #{@distance_from_sun_km}km from the sun and weighs #{@mass_kg}kg.
    The #{@name}'s color is #{color} and a fun fact is: #{@fun_fact}
    "
  end
end 