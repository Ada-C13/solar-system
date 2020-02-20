class SolarSystem
  attr_reader :star_name, :planets
  
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    # puts "1.Inside of a class #{planet.name}"
    return @planets << planet
  end

  def list_planets
    text = "Planets orbiting #{@star_name}:\n"
    for index in (0...@planets.length)
      text += "#{(index + 1)}. #{@planets[index].name}\n"
    end
    return text
  end
  
  def find_planet_by_name(planet_name)
    # Convert the user input to downcase
    more_than_one = Array.new
    planet_name_downcase = planet_name.downcase
  
    # For each planet in downCase comparing with the found planet.
    for index in (0...@planets.length)
      if @planets[index].name.downcase == planet_name_downcase
        more_than_one << @planets[index]
      end
    end
    # if the array has one or more it means that a planet was found.
    if more_than_one.length >= 1 
      return more_than_one
    else
      # Return nil if there is not planet matching with the search.
      return nil
    end
  end
  
  def distance_between(planet1, planet2)
    value_planet1 = nil
    value_planet2 = nil
    # Varibles to downcase to case sentive case.
    planet1 = planet1.downcase
    planet2 = planet2.downcase
    # A look to iterate over the planets intances.
    for index in (0...@planets.length)
      # Sending the value to value one and value two. 
      if @planets[index].name.downcase == planet1
        value_planet1 = @planets[index].distance_from_sun_km
      end
      if @planets[index].name.downcase == planet2
        value_planet2 = @planets[index].distance_from_sun_km
      end
    end
    
    # Raise an error if one the values is nil.
    if (value_planet1 && value_planet2) == nil
      raise "Sorry! We could not find one of the values, try again." 
    else
    # Return the difference between the distance planets.
    return value_planet1 - value_planet2
    end
  end
end