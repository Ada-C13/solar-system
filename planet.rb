class Planet
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize (
    name,
    color,
    mass_kg,
    distance_from_sun_km,
    fun_fact
    )
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end

  def summary
    return "#{@name.to_s.capitalize} is a #{@color} planet that weighs #{@mass_kg}kg. 
It is approximately #{@distance_from_sun_km}km away from the sun, and a fact about is: #{@fun_fact}"
  end
end

# earth = Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
# pluto = Planet.new('pluto', 'varied, grey-orange', 1.30900e22, 5.906e9, 'Named after the Roman god of the underworld')
# mercury = Planet.new('mercury', 'yellow-blue', 3.285e23, 5.791e7, 'mercury is the fasest planet. Completing a full circle around the sun in 88 days')
# venus = Planet.new('venus', 'yellow', 4.867e24, 1.089e8, 'venus is the hottest planet in our solar system')
# mars = Planet.new('mars', 'red', 6.39e23, 1.496e8, 'it is suspected that billions of years ago mars was much warmer and had water')
# jupiter = Planet.new('jupiter', 'white and red', 1.898e27, 7.779e8, 'jupiter is almost twice as large as any other planet in the solar system')
# saturn = Planet.new('saturn', 'yellow', 5.683e26, 1.433e9, 'saturn has the largest and most complex rings of any planet in our solar system')
# uranus = Planet.new('uranus', 'light blue', 8.681e25, 2.877e9, 'uranus rotates at an almost 90-degree angle from the plane of its orbit')
# neptune = Planet.new('neptune', 'blue', 1.024e26, 4.503e9, 'neptune was the first planet located through mathematical calculations')
# menu_selection = [1..9]
# all_planets = [earth, pluto, mercury, venus, mars, jupiter, saturn, uranus, neptune]
# solar_system = SolarSystem.new('Sol')
# solar_system.add_multiple_planets(all_planets)