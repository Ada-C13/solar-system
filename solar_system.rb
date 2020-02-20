class SolarSystem   
  attr_reader :star_name, :planets
  attr_accessor :star_name

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet 
  end

  def list_planets
    declaration = "\nPlanets orbiting #{@star_name} are:\n"
    @planets.each_with_index do |planet, index|
      index += 1
      declaration += "#{index}. #{planet.name}\n"
    end 
    return declaration
  end

  def case_checker
    @planets.each do |planet|
      if planet.name == name.capitalize 
        return planet 
      end
    end 
    return raise ArgumentError, "Planet not recognizable." 
  end 

  def find_planet_by_name(name)
    found_planet = @name.case_checker
  end 

  def planet_details(planet)
    if gets.chomp == @name
      @planet.summary
    end
  end
end

