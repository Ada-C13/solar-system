require_relative 'planet'

def main 
  tatooine = Planet.new("Tatooine", "brown", 20, 100, "Home to Luke Skywalker.")
  endor = Planet.new("Endor", "green", 22, 200, "The small moon that orbits it has Ewoks.")
  coruscant = Planet.new("Coruscant", "black", 19, 300, "Was considered the most politcally important world in the galaxy at one point." )
  bespin = Planet.new("Bespin", "sunset", 10, 400, "A gas giant whose cities float in the clouds.")

  puts tatooine.name
  puts tatooine.color

  puts endor.name
  puts endor.color
end

main