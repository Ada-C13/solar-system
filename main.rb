require_relative "planet"
require_relative "solar_system"


def main
    earth = Planet.new("Earth", "blue-green", 5.972e24,1.496e8, "Earth is the only planet in our solar system not to be named after a Roman or Green deity.")
    mars = Planet.new("Mars", "red", 6.39e23, 227940000, "Olympus Mons, the tallest mountain in the solar system, calls Mars home.") 
    venus = Planet.new("Venus", "yellow", 4.867e24, 1.089e8, "Venus spins clockwise on its axis.")
    mercury = Planet.new("Mercury", "yellow-blue", 3.285e23, 5.791e7, "Your weight on Mercury would be 38% of your weight on Earth.")
    pluto = Planet.new("Pluto", "grey-orange", 1.30900e22, 5.906e9, "Named after the Roman god of the underworld.")


    solar_system = SolarSystem.new("Sol")
    solar_system.add_planet(earth)
    solar_system.add_planet(mars)
    solar_system.add_planet(venus)
    solar_system.add_planet(mercury)
    solar_system.add_planet(pluto)
    list = solar_system.list_planets
    puts list

    until directions != "exit"
        puts "Came to learn about planets, did yah? What would you like to do? Choose from list planets, planet details, add new planet, or exit."
        user_choice = gets.chomp.downcase
        if directions == "list planets"
            user_choice = solar_system.list_planets
        return list
        elsif directions == "planet details"
            puts "Which planet are you interested in?"
            planet_selected = gets.chomp.downcase
        return planet_details.summary
        elsif directions == "add new planet"
            solar_system.add_planet(planet_addition)
        else
            puts "That's all folks!"
        end
    end
end

def add_planet(solar_system)
    puts "What's the planet's name?" 
    name = gets.chomp
    puts "What color is the planet?"
    color = gets.chomp
    puts "What is the planet's Mass in kg?"
    mass_kg = gets.chomp
    puts "What's the planet's distance from the sun in km?"
    distance_from_sun_km = gets.chomp
    puts "Share a fun fact about the planet!"
    fun_fact = gets.chomp
    
    new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    return new_planet
    # solar_system.add_planet(new_planet)
end

main