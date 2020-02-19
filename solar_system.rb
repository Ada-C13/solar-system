class SolarSystem
  attr_reader :star_name, :planets 

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    return "Planets orbiting @star_name \n 
    #{@planets.eachwith {|indiv_planet,i| "#{i+1}  #{indiv_planet}\n"}}"
  end

end

