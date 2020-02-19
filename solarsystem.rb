class SolarSystem

  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def SolarSystem(planet)
    #addplanet 
  end

  def SolarSystem
    return  "Planets orbiting #{star_name}"
  end

end