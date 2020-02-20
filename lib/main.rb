require_relative 'planet'
require_relative 'solar_system'

def main
  milky_way = SolarSystem.new('Sun')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 92.96, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.39e23, 141.6, 'Refered to as the Red Planet')

  milky_way.add_planet(earth)
  milky_way.add_planet(mars)

  user_input = false
  until user_input == true 
    puts <<-Message

    Please enter the letter for what you would like to do:"
    - List all Planets('L')
    - Planet Details('D')
    - Add a Planet('A')
    - Exit('Q')
    Message
    print "=> "
    user_input = gets.chomp.upcase

    case user_input
    when "L" 
      puts milky_way.list_planets
    when "D"
      puts "Enter the name of the planet you want more info for:"
      print "=> "
      planet = milky_way.find_planet_by_name(gets.chomp)
      if planet == 0
        puts "There is no planet with that name!"
      elsif planet == 2
        puts "There are multiple planets with that name!"
      else
        puts planet.summary
      end
    when "A"
      puts "Please enter the following information for your planet:"
      print "Name => "
      name = gets.chomp.capitalize
      print "Color => "
      color = gets.chomp
      print "Mass in kg => "
      mass = gets.chomp.to_i
      print "Distance from the sun in km => "
      distance = gets.chomp.to_i
      print "A fun fact => "
      fun_fact = gets.chomp

      user_planet = Planet.new(name, color, mass, distance, fun_fact)
      milky_way.add_planet(user_planet)
    when "Q"
      puts "Thanks for using the solar system program!"
      user_input = true
    else
      puts "Error: Invalid input\n\n"
    end
  end
end

main