# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')  
  earth = Planet.new('Earth','blue-green', 1.496e8, 5.972e24,'Only planet  know to support life')
  pluto = Planet.new('Pluto','varied, grey-orange', 1.30900e22, 5.906e9,  'Named after the Roman god of the underworld')
  mercury = Planet.new('Mercury', 'yellow-blue', 3.285e23, 5.791e7,  'Mercury is the fasest planet. Completing a full circle around the sun in  88 days')
  venus = Planet.new('Venus', 'yellow', 4.867e24, 1.089e8, 'Venus is the   hottest planet in our solar system')
  mars = Planet.new('Mars', 'red', 6.39e23, 1.496e8, 'It is suspected that   billions of years ago mars was much warmer and had water')
  jupiter = Planet.new('Jupiter', 'white and red', 1.898e27, 7.779e8,  'Jupiter is almost twice as large as any other planet in the solar  system')
  saturn = Planet.new('Saturn', 'yellow', 5.683e26, 1.433e9, 'Saturn has  the largest and most complex rings of any planet in our solar system')
  uranus = Planet.new('Uranus', 'light blue', 8.681e25, 2.877e9, 'Uranus   rotates at an almost 90-degree angle from the plane of its orbit')
  neptune = Planet.new('Neptune', 'blue', 1.024e26, 4.503e9, 'Neptune was  the first planet located through mathematical calculations')
  solar_system.add_planets(mercury)
  solar_system.add_planets(venus)
  solar_system.add_planets(earth)
  solar_system.add_planets(jupiter)
  solar_system.add_planets(saturn)
  solar_system.add_planets(uranus)
  solar_system.add_planets(neptune)
  solar_system.add_planets(mars)
  solar_system.add_planets(pluto)

  print 'Would you like to see a list of planets or exit? (Y/N)'
  input = gets.chomp.upcase
  list = solar_system.list_planets
  if input == 'Y'
    puts list
  else exit
  end

  print 'Pick a planet you would like to learn more about?'
  planet_info_input = gets.chomp
  found_planet = solar_system.find_planet_by_name(planet_info_input)
  puts found_planet.summary

  print 'Would like to add a planet? Y/N' 
  yes_or_no = gets.chomp.upcase
  if yes_or_no == 'Y'
  new_planet_addition(solar_system)
  else
    exit
  end
  end

def new_planet_addition(solar_system)
   solar_system = SolarSystem.new('Big Dipper')  
   puts "Planet name?"
   name = gets.chomp
   puts "Planet color"
   color = gets.chomp
   puts "Planet distance?"
   distance_from_sun_km = gets.chomp.to_i
   puts "Planet mass?"
   mass_kg  = gets.chomp.to_i
   puts "Planet fun fact?"
   fun_fact = gets.chomp
   new_planet = Planet.new(name, color,mass_kg,distance_from_sun_km,fun_fact)
   solar_system.add_planets(new_planet)
   list = solar_system.list_planets
   puts "Would you like to to add another planet"
   answer = gets.chomp.downcase
   until answer == 'yes' do
   new_planet_addition(solar_system)  
   end 
   return list
   return new_planet.summary
end
puts main
 



