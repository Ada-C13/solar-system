require_relative "planet.rb"

def main

  mars = Planet.new("Mars", "red", 6.4171e23, 230000000, "has 2 moons: Phobos and Deimos")

  jupiter = Planet.new("Jupiter", "orange & brown", 1.8982e27, 778000000, "has 79 known moons; its largest moon has a bigger diameter than Mercury")

  return mars.summary, jupiter.summary
end

puts main