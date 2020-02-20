require_relative 'planet'
require_relative 'solar_system'

def display_options_to_do_next
    puts "What would you like to do next?"
    puts "Type 'list' if you want to dispay the planet list"
    puts "Type 'exit' if you want to exit the program"
    puts "Type 'planet details' if you want to see the planet details"
    puts "Type 'add planet' if you wnat to add a new planet"
end



def planet_detial(solar_system_instance)
    puts "what planet would you like to dispay detial"
    user_input = gets.chomp
    planet =  solar_system_instance.find_planet_by_name(user_input)
    if planet.nil?
        puts "The planet is not listed"
    else
        puts planet.summary()
    end
end 



def add_new_planet(solar_system_instance)
    puts "what is the planet's name"
    name = gets.chomp
    puts "What is the planet's color"
    color = gets.chomp
    puts "What is the planet's mass_kg"
    mass_kg = gets.chomp
    puts "What is the planet's distance from sum km"
    distance_from_sun_km = gets.chomp
    puts "What is the planet's fun_fact"
    fun_fact = gets.chomp
    new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    solar_system_instance.add_planet(new_planet)
    puts solar_system_instance.list_planets
    new_planet =  solar_system_instance.find_planet_by_name(name)
    puts new_planet.summary
end 


def main
    solar_system = SolarSystem.new('Sol')
    mercury = Planet.new('Mercury', 'dark gray', 2.235e33, 4.208e1, 'Mercury is a lonely planet!')
    solar_system.add_planet(mercury)

    venus = Planet.new('Venus', 'yellow', 1.868e33, 10.900e3,  'Venus is very hot')
    solar_system.add_planet(venus)

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 4.496e8, 'Only planet known to support life.')
    solar_system.add_planet(earth)

    mars = Planet.new('Mars', 'red', 2.453e45, 1.345e5, 'Mars is red it is awesome!')
    solar_system.add_planet(mars)

    jupiter = Planet.new('Jupiter', 'purple', 3.546e33, 9.456e7, 'Pluto is purple, is the best!')
    solar_system.add_planet(jupiter)

    should_continue = true
    while should_continue
        display_options_to_do_next    
        user_input = gets.chomp.downcase
        if user_input == "list"
            puts "#{list = solar_system.list_planets}"
        elsif user_input == "exit"
            puts "Good Bye! Thank you!"
            break
        elsif user_input == "planet details"
            planet_detial(solar_system)
        elsif user_input == "add planet"
            add_new_planet(solar_system)
        end   
    end
end

main()
