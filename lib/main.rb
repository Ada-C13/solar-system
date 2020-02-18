require_relative "solar_system/planet"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Home planet to human race.")
  tatooine = Planet.new("Tatooine", "brown-yellow", 6.4171e23, 23e7, "Though its proximity to the suns makes life difficult, it is located near key hyperspace routes, making it a smuggler and gangster haven.")

  puts earth.summary
  puts "++++++++++++++++++++++++++++++++++++++++++++++"
  puts tatooine.summary
end

main
