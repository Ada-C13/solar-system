class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    @name = name
    @color = color

    @mass_kg = mass_kg
    until @mass_kg > 0
      print "Please enter a mass kg greater than 0: "
      @mass_kg = gets.chomp.to_i
    end

    @distance_from_sun_km = distance_from_sun_km
    until @mass_kg > 0
      print "Please enter a distance from sun greater than 0: "
      @distance_from_sun_km = gets.chomp.to_i
    end

    @fun_fact = fun_fact
  end

  def summary
    return "            ~~ #{@name} ~~
  Color:                  #{@color}
  Mass (kg):              #{@mass_kg}
  Distance from sun (km): #{@distance_from_sun_km}
  Fun Fact:               #{@fun_fact}"
  end
end