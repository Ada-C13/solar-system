require_relative "lib/planet"
require_relative "lib/solar_system"

## creating methods to use within the main method
# method to create planet for add planet option
def create_planet(solar)
  puts "Let's create a planet for this solar system..."
  puts "What is the name of this planet?"
  planet_name = gets.chomp.capitalize
  puts "What is the color of this planet?"
  planet_color = gets.chomp
  puts "What is the mass in kg of this planet?"
  planet_mass = gets.chomp.to_i

  while planet_mass <= 0
    puts "That is not a valid input. What is the mass in kg of this planet?"
    planet_mass = gets.chomp.to_i
  end

  puts "What is the distance in km between the named star and this planet?"
  planet_distance = gets.chomp.to_i

  while planet_distance <= 0
    puts "That is not a valid input. What is the distance in km between the sun and this planet?"
    planet_distance = gets.chomp.to_i
  end

  puts "What is a fun fact of this planet?"
  planet_fun = gets.chomp

  new_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fun)
  solar.add_planet(new_planet)
  return new_planet
end

def get_planet_to_look_up
  puts "Please enter the planet name you want to look up:"
  input_name = gets.chomp
  return input_name
end

def get_planet_details(solar)
  planet_chosen = get_planet_to_look_up
  found_planet = solar.find_planet_by_name(planet_chosen)
  puts found_planet.summary
end

def run_distance_between(solar)
  planet_chosen_1 = get_planet_to_look_up
  planet1 = solar.find_planet_by_name(planet_chosen_1)
  planet_chosen_2 = get_planet_to_look_up
  planet2 = solar.find_planet_by_name(planet_chosen_2)
  return solar.distance_between(planet1, planet2)
end

def display_options
  puts "\nWhat's next? Enter 1, 2, 3, 4, or 5 for the following options."
  puts "1. list planets"
  puts "2. add planet"
  puts "3. planet details"
  puts "4. distance between planets"
  puts "5. exit"
end

def display_intro
  puts "Welcome and explore this solar system... To infinity and beyond!"
end

# create main method to run the interactive program
def main
  display_intro
  solar = SolarSystem.new("Sol")
  venus = Planet.new("Venus", "yellow", 4.87e24, 108e6, "Venus is the hottest planet in the Solar System.")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life.")
  mars = Planet.new("Mars", "red", 6.42e23, 249e6, "Sustains life? We may be heading there soon.")
  jupiter = Planet.new("Jupiter", "blue-red", 1.898e27, 817e6, "Jupiter is the largest planet in our Solar System.")
  pluto = Planet.new("Pluto", "charcoal black, to dark orange and white", 1.303e22, 5.906e9, "Planet or dwarf planet?")

  solar.add_planet(venus)
  solar.add_planet(earth)
  solar.add_planet(mars)
  solar.add_planet(jupiter)
  solar.add_planet(pluto)

  control_loop = true
  while control_loop
    display_options
    choice = gets.chomp
    case choice
      when "1",  "1.", "list planets", "1. list planets"
        puts solar.list_planets
      when "2", "2.", "add planet", "2. add planet"
        create_planet(solar)
      when "3", "3.", "planet details", "3. planet details"
        get_planet_details(solar)
      when "4", "4.", "distance between planets", "4. distance between planets"
        puts run_distance_between(solar)
      when "5", "5.", "exit", "quit", "5. exit"
        control_loop = false
    end
  end
end

main