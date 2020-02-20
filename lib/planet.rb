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


  # 把這個validation 直接放進去constructor 裡頭，在第一階段就先validate.
  # def number?
  #   if mass_kg < 0 || distance_from_sun_km < 0
  #     raise ArgumentError.new("mass_kg and distance_from_sun_km both should be positive number.")
  #   end
  # end

  def summary
    return "#{@name} is a #{@color} planet, weighted #{@mass_kg}, with a distance of #{@distance_from_sun_km} from the sun. Here's its fun fact: #{@fun_fact}"
  end
end

# Optional: add minitest for Plant class