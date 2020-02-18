require_relative 'planet'

def main
  mars = Planet.new("Mystic Mars", "brown", 1000000, 999999, "Mars has Monsters")
  saturn = Planet.new("Sasy Saturn", "pink", 12121212, 56565656, "Saturn likes Saterdays")

  puts mars.summary
  puts saturn.summary

end

main
