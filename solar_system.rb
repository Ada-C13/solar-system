class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    str_planets = "Planets orbiting #{self.star_name}"
    @planets.each_with_index do |planet, i|
      str_planets += "\n#{i+1}.  #{planet.name}"
    end
    return str_planets
  end

  def find_planet_by_name(name_of_planet)
    planets.each do |planet|
      return planet if planet.name.downcase == name_of_planet.downcase
    end
  end

  def distance_between(planet_1, planet_2)
    return ( planet_1.distance_from_sun_km - planet_2.distance_from_sun_km ).abs
  end

  def get_planet_details
    print "For the planet you want more info on: "
    planet_for_more_details = self.get_verified_planet_info
    return planet_for_more_details.summary

  end

  def create_and_add_planet_to_solar_system
    print "Please enter the name of the planet: "
    name = gets.chomp
    print "Please enter the color of the planet: "
    color = gets.chomp
    print "Please enter the mass of the planet in kg: "
    mass_kg = gets.chomp.to_f
    print "Please enter the distrance from the sun in km: "
    distance_from_sun_km = gets.chomp.to_f
    print "Please enter a fun fact about the planet: "
    fun_fact = gets.chomp 
    new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    self.add_planet(new_planet)
  end

  def get_verified_planet_info
    print "What is the planet's name? "
    planet_name = gets.chomp.downcase
   
    while self.planets.map { |planet| planet.name.downcase }.include?(planet_name) == false
      print "Sorry I don't recognize that as a planet. Please try again: "
      planet_name = gets.chomp.downcase
    end
    
    return self.find_planet_by_name(planet_name)
  end

end