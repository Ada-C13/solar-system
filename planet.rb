class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    if mass_kg <= 0 || distance_from_sun_km <= 0
      raise ArgumentError.new("Mass and Distance from sun must be greater than 0.")
    end
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  def summary
    return "The planet #{name} is #{color}, has a mass of #{format("%.3e", mass_kg)}kg, is #{format("%.3e", distance_from_sun_km.to_s)}km from the sun, and #{fun_fact}"
  end

end