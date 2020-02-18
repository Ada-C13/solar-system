class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name,color,mass,distance_from_sun_km,fun_fact)
    @name = name
    @color = color
    @mass_kg = mass
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
    
    raise ArgumentError.new(
          "Given mass is #{mass}, invalid mass!"
      ) if mass_kg <= 0

    raise ArgumentError.new(
        "Given distance is #{distance_from_sun_km}, invalid distance!"
    ) if distance_from_sun_km <= 0 
  end

  def summary
    return "The #{@color} planet #{@name} weighs #{@mass_kg} and is located #{@distance_from_sun_km}. #{@fun_fact}"
  end 

end