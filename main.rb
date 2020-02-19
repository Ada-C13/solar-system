#main.rb
require_relative "planet"
require_relative "solar_system"

mercury = Planet.new('Mercury', 'yellow-blue', 3.285e23, 5.791e7, 'Mercury is the fasest planet. Completing a full circle around the sun in 88 days')

venus = Planet.new('Venus', 'yellow', 4.867e24, 1.089e8, 'Venus is the hottest planet in our solar system')

earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

mars = Planet.new("Mars", "Red", 6.39e23, 1.496e8, "Mars gets its red color from iron oxide")

jupiter = Planet.new('Jupiter', 'white and red', 1.898e27, 7.779e8, 'Jupiter is almost twice as large as any other planet in the solar system')

saturn = Planet.new('Saturn', 'yellow', 5.683e26, 1.433e9, 'Saturn has the largest and most complex rings of any planet in our solar system')

uranus = Planet.new('Uranus', 'light blue', 8.681e25, 2.877e9, 'Uranus rotates at an almost 90-degree angle from the plane of its orbit')

neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.503e9, 'Neptune was the first planet located through mathematical calculations')

pluto = Planet.new('Pluto', 'varied, grey-orange', 1.30900e22, 5.906e9, 'Named after the Roman god of the underworld')

planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]

our_system = SolarSystem.new("Sun")

planets.each do |planet|
  our_system.add_planet(planet)
end

def planet_details(system)
  puts "Which planet would you like to learn about?"
  planet_name = gets.chomp.capitalize
  return system.find_planet_by_name(planet_name)&.summary
end

def main(system)
  puts "Hi there and welcome to the Solar System!"
  puts "We have lots of information about it and I can't wait to share it all with you."

  answer = String.new

  until answer == "exit"
    puts "\nWhat would you like to do next?:"
    puts "List planets: list\nPlanet details: details\nExit: exit"
    answer = gets.chomp
    case answer
      when "list"
        puts system.list_planets
      when "details"
        puts planet_details(system)
    end
  end
end

main(our_system)