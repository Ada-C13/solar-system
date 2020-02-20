class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
  
  def initialize(name,color,mass,distance_from_sun_km,fun_fact)
    @name = name
    @color = color
    @mass_kg = mass.to_f
    @distance_from_sun_km = distance_from_sun_km.to_f
    @fun_fact = fun_fact
    
    raise ArgumentError.new(
          "Given mass is #{mass}, invalid mass!"
      ) if mass_kg.to_i <= 0

    raise ArgumentError.new(
        "Given distance is #{distance_from_sun_km}, invalid distance!"
    ) if distance_from_sun_km.to_i <= 0 
  end

  def summary
    return "The #{@color} planet #{@name} weighs #{@mass_kg} kilograms and is located #{@distance_from_sun_km} kilometers from the sun. #{@fun_fact}"
  end 

end