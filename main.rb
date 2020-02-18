require_relative 'planet'

def main
  mars = Planet.new("Mystic Mars", "brown", 1000000, 999999, "Mars has Monsters")
  saturn = Planet.new("Sasy Saturn", "pink", 12121212, 56565656, "Saturn likes Saterdays")

  puts "#{mars.name} is #{mars.color} and weighs #{mars.mass_kg}kgs, while being #{mars.distance_from_the_sun_km} kms away from the sun. Little known fact is that #{mars.fun_fact}! 
   Meanwhile, #{saturn.name} is #{saturn.color} and weighs #{saturn.mass_kg}kgs, while being #{saturn.distance_from_the_sun_km} kms away from the sun. Little known fact is that #{saturn.fun_fact}! "
end

main
