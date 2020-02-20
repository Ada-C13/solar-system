# planet.rb

class Planet

  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "Here are some basics on #{@name}:" + 
            "\n" + " 1. It is the color #{@color}." +
            "\n" + " 2. It weighs #{@mass_kg} kg." +
            "\n" + " 3. It is #{@distance_from_sun_km } kilometers from the sun." +
            "\n" + " 4. And fun fact: #{@fun_fact}"
  end 

end 