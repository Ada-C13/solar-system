#!/usr/bin/ruby
# 
# Title  : Planet - Ada Cohort 13 - Space
# Author : Suely Barreto
# Date   : February 2020
# 
require_relative "lib/planet"
require_relative "lib/solar_system"

def show_planet(planet)
  puts "Name = #{planet.name}"
  puts "Color = #{planet.color}"
  puts "Mass = #{planet.mass_kg} Kg"
  puts "Distance from Sun = #{planet.distance_from_sun_km} Km"
  puts "Fun Fact = #{planet.fun_fact}"  
end

def add_new_planet(solar)
  puts "Enter the data for the new planet."
  print "Name: "
  name = gets.chomp.capitalize
  print "Color: "
  color = gets.chomp.downcase
  print "Mass in Kg: "
  mass_kg = gets.chomp.to_f
  print "Distance from the Sun in Km: "
  distance = gets.chomp.to_f
  print "Fun Fact: "
  fun_fact = gets.chomp
  new_planet = Planet.new(name, color, mass_kg, distance, fun_fact)
  solar.add_planet(new_planet)
  puts "\nNew planet add: "
  show_planet(new_planet)
end

def planet_details(solar)
  print "What is the name of the planet? "
  planet_name = gets.chomp
  begin
    planet = solar.find_planet_by_name(planet_name)
    show_planet(planet)
  rescue
    puts "This planet is not in the system."    
  end
end

def add_all_planets(solar)
  mercury = Planet.new("Mercury", "red", 0.330e24, 57e6, "Mercury is the smallest planet in our Solar System.")
  venus   = Planet.new("Venus", "yellow", 4.87e24, 108e6, "Venus is the hottest planet in the Solar System.")
  earth   = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "The Earth is the densest planet in the Solar System.")
  mars    = Planet.new("Mars", "red", 6.42e23, 249e6, "Both of Mars’ poles are blanketed in ice.")
  jupiter = Planet.new("Jupiter", "blue-red", 1.898e27, 817e6, "Jupiter is the largest planet in our Solar System.")
  saturn  = Planet.new("Saturn", "pink", 5.69e26, 1.5e9, "Saturn’s rings are made primarily of \"water ice\" mixed with dust and other chemicals.")
  uranus  = Planet.new("Uranus", "blue", 8.68e25, 3e9, "Uranus is the coldest of the planets.")
  neptune = Planet.new("Neptune", "dark blue", 1.02e26, 4.5e9, "Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.")
  pluto   = Planet.new("Pluto", "brown", 1.31e22, 5.9e9, "Pluto is one third water.")

  solar.add_planet(mercury)
  solar.add_planet(venus)
  solar.add_planet(earth)
  solar.add_planet(mars)
  solar.add_planet(jupiter)
  solar.add_planet(saturn)
  solar.add_planet(uranus)
  solar.add_planet(neptune)
  solar.add_planet(pluto)
end


def main
  solar = SolarSystem.new("Sun")
  add_all_planets(solar)

  choice = ""
  while choice != "exit"
    puts "\nOptions are: List Planets, Planet Details, Add Planet, Distance, Exit."
    print "What would you like to do? "

    choice = gets.chomp.downcase
    case choice
      when "list planets", "lp"
        puts solar.list_planets
      when "planet details", "pd"
        planet_details(solar)
      when "add planets", "ap"
        add_new_planet(solar)
      when "distance", "d"

      when "exit", "x", "quit", "q"
        choice = "exit"
      else
       puts "Invalid choice"
    end
  end
end

main


