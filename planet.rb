class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)

    if mass_kg < 0 || distance_from_sun_km < 0
      raise ArgumentError.new("Planet's mass or distance cannot be less than zero!")
    end

    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Planet #{@name} is #{@color}.\nIt is located #{@distance_from_sun_km} km from the Sun.\nIts mass is #{@mass_kg} kg.\nFun fact about #{@name}: #{@fun_fact}."
  end
end