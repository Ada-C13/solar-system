require_relative "planet"
require_relative "solar_system"

# def main
#   earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
#   puts earth.summary
# end

def main
  # Create solar system object
  @solar_system = SolarSystem.new('Sol')
  # Add planets
  add_planet_to_solar_system("Earth", "red", 2.0, 2, "There is life there, maybe")
  add_planet_to_solar_system("Mars", "red", 2, 3, "There is life there, maybe")
  add_planet_to_solar_system("Mar", "verde", 2, 4.496e8, "Red")


  # Print solar system's planets
  puts "\n"
  puts "+++ #{@solar_system.list_planets}"

  found_planet = @solar_system.find_planet_by_name("Mars")
 
  if found_planet == nil
    raise "Planet not found"
  else
    puts "\n"
    puts "+++ Here is the information about the planet: ++++"
    found_planet.each do |print_info|
    puts print_info.summary 
    puts "\n"
    end
  end
  puts "+++ Distance between 2 planets ++++"
  puts "result: #{@solar_system.distance_between("Earth","Mars")}"

end

def add_planet_to_solar_system(name, color, mass_kg, distance_from_sun_km, fun_fact)
  # Create instance of class Planet
  planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  # Add planet to global variable solar_system
  @solar_system.add_planet(planet)
end

main
