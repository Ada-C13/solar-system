
require_relative 'planet'
require_relative 'solar_system'

# Method used if user chooses to add a new planet
def new_planet
  puts "What is the name of the planet?"
  new_planet_name = gets.chomp

  puts "What color is the planet?"
  new_planet_color = gets.chomp
    while new_planet_color.empty?
      puts "How about a color?"
      new_planet_color = gets.chomp
    end

  puts "What is the mass?(numbers only)"
  new_planet_mass = gets.chomp.to_f
    while new_planet_mass <= 0.0
      puts "Mass cannot be less than 0. Try again."
      new_planet_mass = gets.chomp.to_f
    end 

  puts "What is the distance from the sun?(numbers only)"
  new_planet_distance = gets.chomp.to_i
    while new_planet_distance <= 0.0
      puts "Distance cannot be less than 0. Try again."
      new_planet_distance = gets.chomp.to_i
    end 

  puts "What is a fun fact about this planet?"
  new_planet_fact = gets.chomp 
  
  return Planet.new(new_planet_name, new_planet_color, new_planet_mass, new_planet_distance, new_planet_fact)
end 

# Find all planets within the solar system
def planet_details(current_planet, solar_system)
  solar_system.planets.each do |planet|
    if current_planet == planet.name
      return planet.summary
    end 
  end
  return "That planet does not exist!"
end 

# CLI for user with planet details
def main
  solar_system = SolarSystem.new("Sun") 
  solar_system.add_planet(Planet.new("Mercury", "gray", 3.285e23, 57904197.12 ,"Mercury is named after the messenger of the Roman gods."))
  solar_system.add_planet(Planet.new("Venus", "pale yellow", 4.867e24, 10821.23, "Venus is the second brightest natural object in the sky."))
  solar_system.add_planet(Planet.new('Earth', 'blue', 5.972e24, 1.496e8, "Only planet known to support life."))
  solar_system.add_planet(Planet.new("Mars", "reddish brown",6.39e23 , 227883110.4, "Pieces of Mars have been found on Earth."))
  solar_system.add_planet(Planet.new("Jupiter", "orange", 1.898e27, 778600627.2, "Jupiter has at least 67 moons in satellite around the planet."))

  # Display to user available options to continue
  puts "Select a number from this COMMAND LIST to continue:
        1. List all planets
        2. Display planet details 
        3. Add a new planet
        4. exit"
  input = gets.chomp

  while input != "4"
    if input == "1"
      puts solar_system.list_planets
      puts "Select a number from the orginal command list to continue:"
      input = gets.chomp

    elsif input == "2"
      puts "Which planet's details would you like to see?"
      selected_planet = gets.chomp.capitalize
      puts planet_details(selected_planet, solar_system)
      puts "Select a number from the command list:"
      input = gets.chomp
      
    elsif input == '3'
      solar_system.add_planet(new_planet)
      solar_system.planets.each do |planet|
        # puts planet.summary
      end 
      puts "Select a number from the orginal command list to continue:"
      input = gets.chomp

    else
      puts "Invalid selection type a valid number to continue:
      1. List all planets
      2. Display planet details 
      3. Add a new planet
      4. exit"
      input = gets.chomp
    end 
  end

end

main()