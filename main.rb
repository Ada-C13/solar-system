require_relative 'planet'
require_relative 'solar_system'

def main
  mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'closest planet to the Sun')
  venus = Planet.new('Venus', 'yellow-white', 4.867e24, 6.694e7, 'second brightest natural object in the sky')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'named after the Roman god of war')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'biggest planet in our Solar System')
  saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'least dense planet in the Solar System')
  uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'has the coldest temperatures of any planet')
  neptune = Planet.new('Neptune', 'dark-blue', 1.02e26, 4.5e9, 'has the strongest winds in the Solar System')

  planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]

  # Wave 2:  returning list
  solar_system = SolarSystem.new("Sol")
  planets.each do |planet|
        solar_system.add_planet(planet)
  end

  list = solar_system.list_planets
  puts list

  # finding planet by name
  found_planet = solar_system.find_planet_by_name('VenUs')
  puts "Your planet matches with #{found_planet}"
  puts found_planet.summary


  # Wave 3: control loop
  user_response = " "
  until user_response == "exit"
    puts "Welcome to Solar System Facts. Select one of the options: 
    (1) list planets
    (2) planet details
    (3) add planet
    (4) exit"
    user_response = gets.chomp.downcase
    
    case user_response
    when "(1)", "1", "list planets"
        list = solar_system.list_planets
        puts list
    when "(2)", "2", "planet details"
        puts "Which planet would you like to know more about?"
        user_planet = gets.chomp
        if (found_planet = solar_system.find_planet_by_name(user_planet)) != nil
          puts found_planet.summary
        else 
          puts "Planet not valid."
        end
    when "(3)", "3", "add planet"
        puts "Please provide a planet name."
        planet_name = gets.chomp.capitalize
        puts "Please provide the color of your planet."
        planet_color = gets.chomp
        puts "Please provide planet's mass in kg."
        planet_mass = gets.chomp
        puts "Please provide planet's distance from sun."
        planet_distance = gets.chomp
        puts "Please provide a fun fact about your planet."
        planet_fact = gets.chomp

        user_planet = Planet.new(planet_name, planet_color, planet_mass, planet_distance, planet_fact)

        # add user's new planet to the list
        solar_system.add_planet(user_planet)
    when "exit", "4"
        break
    else
        puts "Please provide valid input."
    end
end
end

# Executing program
main
