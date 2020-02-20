# main.rb
require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sun")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red", 5.972e24, 1.496e8, "Could be teraformed")
  jupiter = Planet.new("Jupiter", "yellow", 5.972e24, 1.496e8, "Something something")
  mercury = Planet.new("Mercury", "grey", 5.972e24, 1.496e8, "Liquid silver")
  venus = Planet.new("Venus", "green", 5.972e24, 1.496e8, "Goddess planet")

  # TODO is there a simpler way to do this?
  # solar_system.add_planet(Planet.name)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)

  user_planet = ""

  user_input = ""

  puts "Welcome to the Solar System Info Machine!\n"
  until user_input == "D"
    puts "\nWould you like to: \nA) View the list of planets \nB) View planet details \nC) Add a planet \nD) Exit"
    puts "Enter A, B, C, or D "
    user_input = gets.chomp.upcase
    case user_input
    when "A" # View the list of planets
      list = solar_system.list_planets
      puts list
    when "B" # View planet details
      puts "What planet would you like to learn about? "
      user_planet = gets.chomp
      found_planet = solar_system.find_planet_by_name(user_planet)
      puts found_planet.summary
    when "C" # Add a planet
      puts "Wow! You've discovered a new planet!"
      puts "Tell us about the planet:"
      puts "Name:"
      new_name = gets.chomp.capitalize
      puts "Color:"
      new_color = gets.chomp.capitalize
      puts "Thanks!"

      new_planet = Planet.new(new_name, new_color, 5.972e24, 1.496e8, "Rage against the machine")
      solar_system.add_planet(new_planet)
    when "D" # Exit
      puts "Have fun storming the solar system!"
      exit
    else
      puts "You entered an invalid answer. Try again."
    end
  end

  # found_planet is an instance of class Planet
  # puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  # puts found_planet.summary
  # => Earth is a blue-green planet ...

  # puts "#{earth.name}: is #{earth.fun_fact}."
  # puts "#{mars.name} is #{mars.fun_fact}."
end

main
