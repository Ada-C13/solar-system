# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  earth = Planet.new("Earth", "blue", (5.972 * 10**24), (1.479 * 10**8), "is 71% water.")
  mars = Planet.new("Mars", "red", (6.39 * 10**23), (2.303 * 10**8), "is the smallest planet in the solar system.")

  sol = SolarSystem.new("The Sun")
  sol.add_planet(earth)
  sol.add_planet(mars)

  input = ""
  puts "Welcome to Solar System reporter."

  until input == "exit"
    puts "\nWhat do you want to do? Type
      'exit' to quit,
      'list' to list planets,
      'details' to find out more about a planet, 
      'distance' to find distance between two planets in system, or
      'add' to add a new planet to the solar system."
    input = gets.chomp.downcase
    case input
      when "list"
        puts sol.list_planets
      when "details"
        puts "Which planet would you like to learn about?"
        puts sol.find_planet_by_name(gets.chomp).summary
      when "add"
        puts "Okay, lets get info for the planet you'd like to add."
        puts "Planet name?"
        name = gets.chomp.downcase.capitalize
        puts "Planet color?"
        color = gets.chomp.downcase
        puts "Planet mass, in kg?"
        mass = gets.chomp.to_f
        puts "Planet distance to sun, in km?"
        distance = gets.chomp.to_f
        puts "Planet fun fact? Enter a sentence beginning with 'is', 'was', 'has' etc. 
        For example, #{earth.name}'s fun fact is: '#{earth.fun_fact}'"
        fact = gets.chomp
        sol.add_planet(Planet.new(name, color, mass, distance, fact))
        puts "Planet added!"
      when "distance"
        puts "Enter the planets you'd like to caculate distance between 
        for, hitting enter after typing each planet:"
        # planet1 = sol.find_planet_by_name(gets.chomp)
        # planet2 = sol.find_planet_by_name(gets.chomp)
        puts sol.distance_between(gets.chomp, gets.chomp)
      when 'exit'
        puts "Goodbye!"
      else
        puts "Oops, that's not a valid option."
      end
  end
end

main