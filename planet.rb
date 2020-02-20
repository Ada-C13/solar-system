class Planet
  attr_reader :name, :color, :mass_kg,:distance_from_sun_km,:fun_fact

  def initialize(name, color, mass_kg,distance_from_sun_km,fun_fact)
    raise ArgumentError if mass_kg < 0 || distance_from_sun_km < 0
    @name = name
    @color = color 
    @distance_from_sun_km = distance_from_sun_km 
    @fun_fact = fun_fact
    @mass_kg = mass_kg
  end

  def summary
    return "Summary of #{name} \n #{@name} is #{@color} and approximately #{@distance_from_sun_km},and weighs #{@mass_kg}. Also an fun fact about #{@name} is that #{@fun_fact}"
    end
end

