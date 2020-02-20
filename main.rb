require_relative 'planet'
require_relative 'solar_system'

def main 
  mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet in our Solar System.')
  venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet in the Solar System.' )
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'Both of Mars’ poles are blanketed in ice.')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')
  saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'Saturn’s rings are made primarily of “water ice” mixed with dust and other chemicals.')
  uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
  neptune = Planet.new('Neptune', 'dark blue', 1.02e26, 4.5e9, 'Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.')

  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(mercury)
  solar_system.add_planet(earth)
  solar_system.add_planet(venus)

  should_continue = true 
  while should_continue
    puts "Enter L to see the list of planets, D if you wanna see details about a planet, to add a planet A or E to exit the program."
    user_input = gets.chomp.upcase 
    until ["L", "E", "D", "A"].include?(user_input)
      puts "Error, try again:"
      user_input = gets.chomp.upcase 
    end 

    if user_input == "L"
      puts solar_system.list_planets 
    elsif user_input == "D"
      puts "enter the planet you want to learn about:"
      planet_choice = gets.chomp
      planet_info = solar_system.find_planet_by_name(planet_choice) 
    elsif user_input == "A"
      puts "What is the name of the planet? "
      name = gets.chomp.capitalize

      puts "What is the planet color?"
      color = gets.chomp 

      puts "What is the planet mass in kg"
      mass_kg = gets.chomp.to_f 

      puts "What is the distance from sun in kg?"
      distance_from_sun_kg = gets.chomp.to_f

      puts "Write a fun fact about this planet:"
      fun_fact = gets.chomp.capitalize

      user_planet = Planet.new(name, color, mass_kg, distance_from_sun_kg, fun_fact)
      solar_system.add_planet(user_planet)
      puts "#{user_planet.summary}\n" 
    else 
      should_continue = false 
    end 
  end 
end 

main 