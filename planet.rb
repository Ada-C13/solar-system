class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact    

    [mass_kg,distance_from_sun_km].each do |var|
      raise(ArgumentError, "Sorry, #{var} needs to be a number") if var.is_a?(Float) == false && var.is_a?(Integer) == false
    end
    
    [mass_kg,distance_from_sun_km].each do |var|
      raise(ArgumentError, "Sorry, #{var} needs to be a number greater than 0!") if var < 0
    end

  end

  def summary
    return "#{self.name} is a #{self.color} planet that weighs #{self.mass_kg} kg and is #{self.distance_from_sun_km} km from the sun.\nFun fact about #{self.name}: #{self.fun_fact}"
  end

end