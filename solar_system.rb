class SolarSystem 
  attr_reader :planets, :star_name

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return @planets
  end


  def list_planets
    puts "Planets Orbiting #{star_name}: "
    return @planets.each_with_index do |planet, i|
      puts "##{i+1}. #{planet.name}"
    end 
  end

  def find_planet_by_name(planet)
    @planets.each do |body|
      body.name.downcase!
      if body.name == planet
        return body
      end
    end
  end

end
