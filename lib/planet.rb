class Planet

attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    # @mass_kg = mass_kg
    # @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    if (mass_kg.is_a?(Numeric)) && (mass_kg > 0)
      @mass_kg = mass_kg
    else
      @mass_kg = 0
    end
    
    if (distance_from_sun_km.is_a? (Numeric)) && (distance_from_sun_km > 0)
      @distance_from_sun_km = distance_from_sun_km
    else
      @distance_from_sun_km = 0
    end
  end

  def summary()
    return "Planet:#{@name} is the color:#{@color}, weighing: #{@mass_kg}, and this far from the sun: #{@distance_from_sun_km}. Here's a fun fact: #{@fun_fact}."
  end
end