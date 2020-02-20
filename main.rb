require_relative 'lib/planet'
require_relative 'lib/solar_system'

def display_welcome_message
  puts "=============================="
  puts "Welcome to Ada Solar System!🪐"
  puts "=============================="
end

def paint_on_gray(string)
  return "#{string.on_light_white}"
end 

def paint_gray(string)
  return "#{string.light_black}"
end 

def paint_yellow(string)
  return "#{string.yellow}"
end 

def comma_sperated_list(array)
  output = "(1) #{array[0]}"
  (1..array.length - 1).each do |i|
    output += ", (#{i + 1}) #{array[i]}"
  end 

  return output
end 

def display_options 
  options = ["list planets", "planet details", "add planet", "find distance between 2 planets", "exit"]

  puts paint_gray("\nChoose one of the following options:")
  puts paint_gray(comma_sperated_list(options))

  print " > "
  answer = gets.chomp.downcase
  answer = check_valid_option(answer)

  return answer
end 

def check_valid_option(answer)
  valid_options = ["list planets", "list planet", "1", "(1)", "planet details", "planet detail", "2", "(2)", "add planet", "add planets", "3", "(3)", "find distance between 2 planets", "distance", "distance between", "find distance", "4", "(4)", "exit", "5", "(5)"] 

  while !valid_options.include?(answer)
    puts paint_yellow("  (!) Enter a valid option")
    answer = display_options 
  end 

  return answer
end 

def get_user_input(type)
  puts "\nEnter a name of the planet you'd like to #{type}:"
  print "> "
  name = gets.chomp

  return name
end 

def display_subtitle(subtitle)
  puts paint_on_gray("\nHere is the #{subtitle}")
end 

def display_found_alert_message(name, found)
  output = ""
  name.capitalize!

  if found
    output += "  (!) The planet, #{name} already exist in our solar system. Try again."
  else 
    output += "  (!) The planet, #{name} does not exist in our solar system. Try again." 
  end 

  puts paint_yellow(output)
end 


def create_planet_by_user(name)
  questions = ["Color", "Mass(kg)", "Distance from sun (km)", "Fun fact"]

  answers = [] 
  answers << name 

  questions.each do |question|
    print "#{question}: "
    answer = gets.chomp
    answers << answer
  end 

  new_planet = Planet.new(*answers)

  return new_planet
end 

def display_goodbye_message
  puts "================================"
  puts "Goodbye! Exiting the program..."
  puts "================================"
end

def main 
  display_welcome_message

  solar_system = SolarSystem.new('Sun')

  mercury = Planet.new('Mercury', 'gray', 3.285e23, 0.579e8, 'Mercury is hot, but not too hot for ice.')

  venus = Planet.new('Venus', 'yellowish white', 4.867e24, 1.077e8, 'Only planet in the Solar System to be named after a female figure')

  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

  mars = Planet.new('Mars', 'orange-reddish',  6.39e23, 2.302e8, 'Mars’s gravity is 38 percent of Earth’s. So if you weigh 60 pounds here, you’d weigh about 23 pounds there.')

  jupiter = Planet.new('Jupiter', 'orange', 1.898e27, 7.798e8, 'Jupiter is the fastest spinning planet in the solar system')

  # add planets
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth) # Adding an instance
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)

  continue = true 

  while continue 
    answer = display_options

    case answer 
    when "list planets", "list planet", "1", "(1)"
      display_subtitle("planets list")
      list = solar_system.list_planets 
      puts list

    when "planet details", "planet detail", "2", "(2)"
      name = get_user_input("learn about")

      while !solar_system.is_found?(name)
        display_found_alert_message(name, false)
        name = get_user_input("learn about")
      end 

      display_subtitle("planet details")
      found_planet = solar_system.find_planet_by_name(name) 
      puts found_planet.summary

    when "add planet", "add planets", "3", "(3)"
      name = get_user_input("add")

      while solar_system.is_found?(name)
        display_found_alert_message(name, true)
        name = get_user_input("add")
      end 
      
      new_planet = create_planet_by_user(name)
      solar_system.add_planet(new_planet)

    when "find distance between 2 planets", "distance", "distance between", "find distance", "4", "(4)"
      display_subtitle("distance between 2 planets")

      selected_planets = []
      2.times do |i| 
        print "Planet ##{i + 1}: "
        name = gets.chomp 

        while !solar_system.is_found?(name)
          display_found_alert_message(name, false)
          print "Planet ##{i + 1}: "
          name = gets.chomp  
        end 

        selected_planets << name
      end 

      distance = solar_system.distance_between(*selected_planets)
      puts "The distance between #{selected_planets[0]} and #{selected_planets[1]} is #{distance}km."

    when "exit", "5", "(5)"
      display_goodbye_message
      continue = false
    else 
      puts paint_yellow("  (!) Enter a valid option")
      answer = display_options   
    end
  end 
end 

main


# output 
# ==============================
# Welcome to Ada Solar System!🪐
# ==============================

# Choose one of the following options:
# (1) list planets, (2) planet details, (3) add planet, (4) find distance between 2 planets, (5) exit
#  > 3

# Enter a name of the planet you'd like to add:
# > ruby 
# Color: red
# Mass(kg): 500
# Distance from sun (km): 10099.89
# Fun fact: Ruby is the birthstone for July!

# Choose one of the following options:
# (1) list planets, (2) planet details, (3) add planet, (4) find distance between 2 planets, (5) exit
#  > 1

# Here is the planets list
# Planets orbiting Sun
# 1. Mercury
# 2. Venus
# 3. Earth
# 4. Mars
# 5. Jupiter
# 6. Ruby

# Choose one of the following options:
# (1) list planets, (2) planet details, (3) add planet, (4) find distance between 2 planets, (5) exit
#  > 2

# Enter a name of the planet you'd like to learn about:
# > Ruby

# Here is the planet details
# +-------------------+----------------------------------+
# | Name              | Ruby                             |
# | Color             | red                              |
# | Distance from sun | 10099.89 km                      |
# | Mass              | 500.0 kg                         |
# | Fun fact          | Ruby is the birthstone for July! |
# +-------------------+----------------------------------+

# Choose one of the following options:
# (1) list planets, (2) planet details, (3) add planet, (4) find distance between 2 planets, (5) exit
#  > 2

# Enter a name of the planet you'd like to learn about:
# > venus

# Here is the planet details
# +-------------------+--------------------------------------------------------+
# | Name              | Venus                                                  |
# | Color             | yellowish white                                        |
# | Distance from sun | 107700000.0 km                                         |
# | Mass              | 4.867e+24 kg                                           |
# | Fun fact          | Only planet in the Solar System to be named after a fe |
# |                   | male figure                                            |
# +-------------------+--------------------------------------------------------+

# Choose one of the following options:
# (1) list planets, (2) planet details, (3) add planet, (4) find distance between 2 planets, (5) exit
#  > 4

# Here is the distance between 2 planets
# Planet #1: ruby
# Planet #2: mercury
# The distance between Ruby and Mercury is 57889900.11km.

# Choose one of the following options:
# (1) list planets, (2) planet details, (3) add planet, (4) find distance between 2 planets, (5) exit
#  > 5
# ================================
# Goodbye! Exiting the program...
# ================================