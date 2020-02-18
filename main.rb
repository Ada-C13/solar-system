require 'pry'
require_relative 'planet'
require_relative 'solar_system'

def display(solar_system)
	puts "Which planet would you like to see?"
	display_planet = gets.chomp.downcase
	begin
		puts solar_system.find_planet_by_name(display_planet).summary()
	rescue NoMethodError => e
		puts "Planet not in solar systen. Please enter a different planet or add new planet to the solar system."
	end
end

def verify_number(data_to_verify)
  until (Float(data_to_verify) rescue nil) != nil && data_to_verify.to_f > 0
    puts "Input not accepted, please enter a number:"
    data_to_verify = gets.chomp
  end
  data_to_verify.to_f
end

def user_create_planet(solar_system)
	puts "What is the name of the planet?"
	user_planet_name = gets.chomp.capitalize

	puts "What color is #{user_planet_name}?"
	user_planet_color = gets.chomp.downcase

	puts "What is its mass in kilograms?"
	user_planet_mass = verify_number(gets.chomp)

	puts "What distance is the planet from the sun (in kilometers)?"
	user_planet_distance = verify_number(gets.chomp)

	puts "Can you share a fun fact about #{user_planet_name}?"
	user_planet_fun_fact = gets.chomp.capitalize

	user_planet = Planet.new(user_planet_name,user_planet_color, user_planet_mass,user_planet_distance,user_planet_fun_fact)
	solar_system.add_planet(user_planet)
end

def display_distance_between(solar_system)
	puts "Please enter the name of the first planet."
	planet_one = gets.chomp

	puts "Please enter the name of the second planet."
	planet_two = gets.chomp

	puts "The distance between #{planet_one} and #{planet_two} is #{solar_system.distance_between(planet_one, planet_two)} km."
end

def main 
	solar_system = SolarSystem.new('Sol')

	earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
	solar_system.add_planet(earth)

	venus = Planet.new('Venus', 'White', 6.392e24, 2.982e9, 'Sister planet to Earth')
	solar_system.add_planet(venus)

	puts "What action would you like to take?"
	user_control = gets.chomp.downcase
	
	until user_control == 'exit'
		case user_control
		when 'list planets'
			list = solar_system.list_planets
			puts list
		when 'planet details'
			display(solar_system)
		when 'add planet'
			user_create_planet(solar_system)
		when 'find distance'
			display_distance_between(solar_system)
		else
			puts "Please enter a valid option."
		end
		
		puts "What action would you like to take next?"
		user_control = gets.chomp.downcase
	end

end

main