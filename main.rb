require_relative 'planet'
require_relative 'solar_system'
def main
solar_system = SolarSystem.new('Sol')
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life.')
solar_system.add_planet(earth)
pluto = Planet.new('Pluto', 'purple', 6.546e33, 2.456e7, 'Pluto is purple - sounds good!')
solar_system.add_planet(pluto)
mars = Planet.new('Mars', 'red', 7.453e45, 1.345e5, 'Mars is red because I said!')
solar_system.add_planet(mars)
mercury = Planet.new('Mercury', 'dark gray', 3.235e33, 48.208e1, 'Mercury has wrinkles!' )
solar_system.add_planet(mercury)
venus = Planet.new('Venus', 'yellowish', 4.868e33, 108.900e3,  'One day on Venus is longer than one year!' )
solar_system.add_planet(venus)
list = solar_system.list_planets
puts list
found_planet = solar_system.find_planet_by_name('eArth')
# found_planet is an instance of class Planet
puts found_planet
# => #<Planet:0x00007fe7c2868ee8>
puts found_planet.summary
# => Earth is a blue-green planet ...


    should_continue = true
  
    while should_continue
      puts "What would you like to do next. type 'list' if you want to print list or planet 'exit' to exit the program"
      user_input = gets.chomp
        if user_input == "list"
            puts "#{list = solar_system.list_planets}"
        elsif user_input == "exit"
            puts "Good Bye! Thank you!"
            break
        elsif user_input == "planet details"
            planet_detial(solar_system)
        elsif user_input == "add planet"
            add_planet(solar_system)

        end   
    end
end



def planet_detial(ss)
    puts "what planet would you like to dispay detial"
    user_input = gets.chomp
    planet =  ss.find_planet_by_name(user_input)
    if planet.nil?
        puts "The planet is not listed"
    else
        puts planet.summary()
    end
end 

def add_planet(ss1)
    puts "what is the planet's name"
    name = gets.chomp
    puts "color"
    color = gets.chomp
    puts "mass_kg"
    mass_kg = gets.chomp
    puts "distance"
    distance_from_sun_km = gets.chomp
    puts "fun_fact"
    fun_fact = gets.chomp
    new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)

    ss1.add_planet(new_planet)

end 


# solar_system = SolarSystem.new('Sol')
# add_planet(solar_system)

# puts solar_system.list_planets
    









# puts solar_system.list_planets
# puts "Which planet would like to see"
# planet_name = gets.chomp
# found_planet = solar_system.find_planet_by_name(planet_name)
# puts found_planet.summary

