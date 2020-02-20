class Planet
 
  # Instance variables are accessible but not writable
  attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  # Constructor
  def initialize (name, color, mass_kg, distance_from_sun_km, fun_fact)
    # Check inputs
    # Check mass_kg is a number
    check_input(mass_kg)
    # Check distance_from_sun is a number
    check_input(distance_from_sun_km)

    # Set values to instance variables
    @name = name
    @color = color
    @mass_kg = mass_kg
    @distance_from_sun_km = distance_from_sun_km
    @fun_fact = fun_fact
  end
  
  # Check input, checks is a number and is geeater than 0
  def check_input(value)
    # Checks is a number
    raise "Not a number" unless (value.is_a?(Integer) || value.is_a?(Float))
    # Checks value is greater than zero
    raise "Not valid value, value should be greater than zero"  unless value > 0
    return value
  end

  def summary
    return "Planet: #{@name} Color: #{@color} Mass kg: #{@mass_kg} Distance from sun: #{@distance_from_sun_km} Fun fact: #{@fun_fact}"
  end
end

