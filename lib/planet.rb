class Planet
  
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    
    # add error checking for numbers
    if @mass_kg < 0 || @distance_from_sun_km < 0
      raise(ArgumentError, "Mass or distance cannot be negative")
    end
  end
  
  def summary
    return "\nWhat do we know about #{name}?  \nIt is #{color}.  It has a mass of #{mass_kg} kilograms.  #{name} is #{distance_from_sun_km} kilometers from the Sun.  Did you know that #{name} #{fun_fact}?  Pretty fascinating, right?"
  end
  
end