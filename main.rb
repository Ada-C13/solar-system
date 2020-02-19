# main.rb
require_relative "planet"
require_relative 'solar_system'

# wave 1

def main
    # Load Planet into pry:
    # $ pry -r ./planet.rb
    earth = Planet.new(name: "Earth", color: "blue-green", mass_kh: 5.972e24, distance_from_sun_km: 1.496e8, fun_fact: "Earth is the only planet in our solar system not to be named after a Roman or Green deity.")
    mars = Planet.new(name: "Mars", color: "red", mass_kh: 6.39e23, distance_from_sun_km: 227940000, fun_fact: "Olympus Mons, the tallest mountain in the solar system, calls Mars home.") 
    
    puts earth.name
    puts mars.name

    puts earth.fun_fact
    puts mars.fun_fact
   
    earth.color = "blue"
    mars.color = "red"
    # => NoMethodError: undefined method `color=' for #<Planet:0x00007fcfba04c130>
    # => Did you mean?  color

    puts earth.summary
    puts mars.summary
end
