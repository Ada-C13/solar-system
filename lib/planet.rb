class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    raise ArgumentError.new("mass_kg must be positive number") if mass_kg < 0
    raise ArgumentError.new("distance_from_sun_km must be positive number.") if distance_from_sun_km < 0
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name} is a #{@color} planet, weighted #{@mass_kg}, with a distance of #{@distance_from_sun_km} from the sun. Here's its fun fact: #{@fun_fact}"
  end
end
