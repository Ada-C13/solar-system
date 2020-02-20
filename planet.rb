class Planet 
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color

    @mass_kg = mass_kg
    until mass_kg > 0 
      mass_kg = gets.chomp.to_f
    end 

    @distance_from_sun_km = distance_from_sun_km
    until distance_from_sun_km > 0 
      distance_from_sun_km = gets.chomp.to_f
    end 

    @fun_fact = fun_fact
  end 

  def summary
    return "The Planet #{@name} color(s) is #{@color} your mass kg is #{@mass_kg} your distance from the sun in km is #{@distance_from_sun_km}, and a fun fact is #{@fun_fact}"
  end 
end 




