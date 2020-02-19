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
    result = ""
    planets.each_with_index {|v,index|
    result += "#{index+1}. #{v.name}\n"
    }
    return result 
  end

  def find_planet_by_name(planet_name)
    input = planet_name.downcase
    @planets.each do |planet|
      if planet.name.downcase == input
        return planet
      end 
    end 
  end 

  def distance_between(planet_a, planet_b)
    planet_a = planet_a.downcase
    planet_b = planet_b.downcase
    distance_a = 0
    distance_b = 0
    @planets.each do |planet|
      if planet.name.downcase == planet_a
        distance_a = planet.distance_from_sun_km
      end 
    end

    @planets.each do |planet|
      if planet.name.downcase == planet_b
        distance_b = planet.distance_from_sun_km
      end 
    end

    return (distance_a - distance_b).abs
  end
  
  def planet_details
    again = "y"
    while again != "n"
      puts self.list_planets
      puts "which planet would you like to learn more about?(type it in)"
      planet_to_learn = gets.chomp.downcase
      puts self.find_planet_by_name(planet_to_learn).summary
      puts "would you like to learn about another planet? y/n"
      again = gets.chomp.downcase
    end 
  end 

  def add_planet_by_user
    again = "y"
    while again != "n"
      puts "please enter the planet name?"
      planet_name = gets.chomp.downcase
      puts "color?"
      planet_color = gets.chomp.downcase
      puts "mass in kg?"
      planet_mass = gets.chomp.to_f
      puts "distance to sun in km?"
      planet_dis = gets.chomp.to_f
      puts "fun facts?"
      planet_fun = gets.chomp.downcase

      user_new_planet = Planet.new(planet_name,planet_color,planet_mass,planet_dis,planet_fun)
      self.add_planet(user_new_planet)
      puts self.list_planets

      puts "would you like to add another planet info? y/n"
      again = gets.chomp.downcase
    end 
  end 

end 