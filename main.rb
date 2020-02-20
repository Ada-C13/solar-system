require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  earth = Planet.new("earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  pluto = Planet.new("pluto", "varied, grey-orange", 1.30900e22, 5.906e9, "Named after the Roman god of the underworld")
  mercury = Planet.new("mercury", "yellow-blue", 3.285e23, 5.791e7, "Mercury is the fasest planet. Completing a full circle around the sun in 88 days")
  venus = Planet.new("venus", "yellow", 4.867e24, 1.089e8, "Venus is the hottest planet in our solar system")
  mars = Planet.new("mars", "red", 6.39e23, 1.496e8, "Pieces of Mars have fallen to Earth")
  jupiter = Planet.new("jupiter", "white and red", 1.898e27, 7.779e8, "Jupiter is almost twice as large as any other planet in the solar system")
  saturn = Planet.new("saturn", "yellow", 5.683e26, 1.433e9, "Saturn has the largest and most complex rings of any planet in our solar system")
  uranus = Planet.new("uranus", "light blue", 8.681e25, 2.877e9, "Uranus rotates at an almost 90-degree angle from the plane of its orbit")
  neptune = Planet.new("neptune", "blue", 1.024e26, 4.503e9, "Neptune was the first planet located through mathematical calculations")

  #list all the planets
  solar_system = SolarSystem.new("Sun")
  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  #add a control loop that will ask the user what to do
  instructions = "What would you like to do?\nPlease choose from the following options:\n1. list planets\n2. planet details\n3. add planet\n4. exit"
  puts instructions
  user_command = gets.chomp

  #create a method to see if the users input is valid
  def valid_input?(user_command)
    commands = ["1", "list planets", "2", "planet details", "3", "add planet", "4", "exit"]
    until commands.include? user_command
      puts "In valid input"
      puts "1. list planets"
      puts "2. planet details"
      puts "3. add planet"
      puts "4. exit"
      user_command = gets.chomp
    end
    return user_command
  end

  #method for planet detail
  def planet_summary(solar_system)
    puts "what planet would you like to get more details on?\nChoose a planet from the following list to get more details on."
    puts solar_system.list_planets
    #take in the input and make sure it's a valid input/planet name
    planet_name = gets.chomp.downcase
    planets = solar_system.planets.map { |planet| planet.name }
    until planets.include?(planet_name)
      puts "hmmm that's not a planet. Please enter a planet name"
      planet_name = gets.chomp.downcase
    end
    #call in for the class to invoke the summary of that input
    user_planet = solar_system.find_planet_by_name(planet_name)
    puts user_planet.summary
  end

  #3 add planets
  def add_planet(solar_system)
    puts "Enter the name of the planet you'd like to add."
    planet_to_add = gets.chomp.downcase
    puts "The color."
    planet_color = gets.chomp.downcase
    puts "The mass in kg" #add a test that will ensure inputted value is legit
    planet_mass = gets.chomp.to_f
    puts "The distance from the sun km"
    planet_distance = gets.chomp.to_f #add a test that will ensure inputted value is legit
    puts "Fun fact:"
    planet_fun_fact = gets.chomp.downcase
    user_added_planet = Planet.new(planet_to_add, planet_color, planet_mass, planet_distance, planet_fun_fact)
    solar_system.add_planet(user_added_planet)
  end

  #evaluate the users command and display what they're asking for
  until user_command == "exit" || user_command == "4"
    if user_command == "1" || user_command == "list planets"
      puts solar_system.list_planets
      puts instructions
      user_command = valid_input?(gets.chomp)
    elsif user_command == "2" || user_command == "planet details"
      planet_summary(solar_system)
      puts instructions
      user_command = valid_input?(gets.chomp)
    elsif user_command == "3" || user_command == "add planet"
      add_planet(solar_system)
      puts instructions
      user_command = valid_input?(gets.chomp)
    end
  end
end

main
