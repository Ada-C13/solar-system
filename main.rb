#main.rb
require_relative "lib/planet"
require_relative "lib/solar_system"

mercury = Planet.new('Mercury', 'yellow-blue', 3.285e23, 5.791e7, 'Mercury is the fastest planet -- a year on Mercury is 88 Earth days')

venus = Planet.new('Venus', 'yellow', 4.867e24, 1.089e8, 'Venus is the second brightest object in the night sky')

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Earth is the only planet not named after a god')

mars = Planet.new("Mars", "Red", 6.39e23, 1.496e8, 'Mars gets its red color from iron oxide')

jupiter = Planet.new('Jupiter', 'white and red', 1.898e27, 7.779e8, 'The Great Red Spot is a huge storm on Jupiter. It\'s gone on for 350 years and could fit three Earths inside of it')

saturn = Planet.new('Saturn', 'yellow', 5.683e26, 1.433e9, 'Saturn has the largest and most complex rings of any planet in our solar system')

uranus = Planet.new('Uranus', 'light blue', 8.681e25, 2.877e9, 'Uranus rotates at an almost 90-degree angle from the plane of its orbit')

neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.503e9, 'Neptune was the first planet located through mathematical calculations')

pluto = Planet.new('Pluto', 'varied, grey-orange', 1.30900e22, 5.906e9, 'Pluto sometimes has an atmosphere -- its atmosphere will freeze and thaw depending on where Pluto is in its orbit around the Sun')

planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]

our_system = SolarSystem.new("Sun")

planets.each do |planet|
  our_system.add_planet(planet)
end

def planet_details(system)
  puts "\nWhich planet would you like to learn about?"
  planet_name = gets.chomp.capitalize
  return system.find_planet_by_name(planet_name)&.summary
end

def add_planet_from_user(system)
  planet_reqs = %w(name color mass distance fact)
  puts "\nOkay! You wanted to add a planet."
  planet_reqs.map! do |req|
    print "What's your planets #{req}?: "
    req = gets.chomp
  end
  new_planet = planet_reqs[0].downcase
  new_planet = Planet.new(planet_reqs[0].capitalize, planet_reqs[1], planet_reqs[2].to_i, planet_reqs[3].to_i, planet_reqs[4])
  puts "Okay! Here's your new planet: "
  puts new_planet.summary

  return system.add_planet(new_planet)
end

def find_difference_using_input(system)
  puts "\nLet's find out the difference of the distances of two planets from the #{system.star_name}!"

  print "What's the name of the first planet?: "
  planet_one = gets.chomp
  print "And the second planet?: "
  planet_two = gets.chomp

  first = system.find_planet_by_name(planet_one)
  second = system.find_planet_by_name(planet_two)
  puts "The distance between #{first.name} and #{second.name} is #{system.find_difference(first, second)} km."
end

def main(system)
  puts "Hi there and welcome to the Solar System!"
  puts "We have lots of information about it and I can't wait to share it all with you."

  answer = String.new

  until answer == "exit"
    puts "\nWhat would you like to do next?:"
    puts "\nList Planets: list\nPlanet details: details\nAdd Planet: add\nFind Difference of Distance from the #{system.star_name}: difference\nExit: exit"
    answer = gets.chomp
    case answer
      when "list"
        puts system.list_planets
      when "details"
        puts planet_details(system)
      when "add"
        add_planet_from_user(system)
      when "difference"
        find_difference_using_input(system)
      when "exit"
        puts "Alright! Goodbye!"
        return
      else
        puts "\nError: invalid input"
    end
  end
end

main(our_system)