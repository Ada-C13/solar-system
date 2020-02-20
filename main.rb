# Installing the Gem tty-prompt to run the menu.
require "tty-prompt"
@prompt = TTY::Prompt.new

require_relative "planet"
require_relative "solar_system"

def main
  # Create solar system object
  @solar_system = SolarSystem.new('Sol')

  # Pre existing planets.
  add_planet_to_solar_system("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  add_planet_to_solar_system("Mars", "red", 6.39e23, 1.496e8, "it is suspected that billions of years ago Mars was much warmer and had water")
  add_planet_to_solar_system("Pluto", "varied, grey-orange", 1.30900e22, 5.906e9, "Named after the Roman god of the underworld")
  
  # Function to create a new planet 
  def add_planet
    puts "Planet name:"
    planet_name = gets.chomp

    puts "Planet Color:"
    planet_color = gets.chomp

    puts "Planet Mass in kg:"
    mass_in_kg = gets.chomp.to_f

    puts "Please enter the distance_from_sun_km"
    distance = gets.chomp.to_f

    puts "Please enter a Fun fact about this planet :) :"
    fun = gets.chomp
    # Add planets
    add_planet_to_solar_system(planet_name, planet_color,mass_in_kg , distance, fun)
    planet_details(planet_name)
  end

  # Function to looking for a specific planet.
  def planet_details(name)
    found_planet = @solar_system.find_planet_by_name(name)
    # Raise an error if the planet is not found.
    if found_planet == nil
      raise "Planet not found"
    else
      # Else, print out the summany method.
      puts "\n"
      puts "+++ Here is the information about the planet: ++++"
      
      found_planet.each do |print_info|
        puts print_info.summary 
        puts "\n"
      end
    end
  end

  def diference_between_two_planets (planet1,planet2)
    puts "\n"
    puts "+++ Distance between 2 planets ++++"
    puts "result: #{@solar_system.distance_between(planet1, planet2)}"
  end
  puts "Welcome to the Solar System SOL"

  # Using a Promp Gem to have a nice menu.
  user_input = @prompt.select('What do you want to do:') do |menu|
    # Each menu is assign to the varibale user_input > Depends of the user choise. 
    menu.choice "List of planets"
    menu.choice "Planet details"
    menu.choice "Add Planet"
    menu.choice "Know the distance differece between two planets"
    menu.choice "Exit"
  end

  # Case to handle the diffetent inputs drom the user.
  case user_input
    when "List of planets"
      puts "\n"
      puts "+++ #{@solar_system.list_planets}"
    when "Planet details"
      puts "planet"
      planet_to_find = gets.chomp
      planet_details(planet_to_find)
    when "Add Planet"
      add_planet
      puts "+++ #{@solar_system.list_planets}"
    when "Know the distance differece between two planets"
      puts "Here is the list of the planet we have so far:"
      puts @solar_system.list_planets
      puts "Please enter the name of each planet:"
      puts "Planet 1"
      planet1 = gets.chomp
      puts "Planet 2"
      planet2 = gets.chomp
      diference_between_two_planets(planet1,planet2)
    when "Exit"
      exit
  end
end

def add_planet_to_solar_system(name, color, mass_kg, distance_from_sun_km, fun_fact)
  # Create instance of class Planet
  planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  # Add planet to global variable solar_system
  @solar_system.add_planet(planet)
end

main
