require 'pry'

class Planet
	attr_reader :name, :color, :fun_fact
	attr_accessor :mass_kg, :distance_from_sun_km
	def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
		@name = name
		@color = color
		self.mass_kg = mass_kg
		self.distance_from_sun_km = distance_from_sun_km
		@fun_fact = fun_fact
	end

	def summary()
		return "#{@name} is a wonderful planet! It is a beautiful #{color} color! #{@name} has a mass of #{mass_kg} kg and is #{distance_from_sun_km} km from the sun. You might be surprised to find that: #{fun_fact}."
	end

	def mass_kg=(value)
		begin
			value > 0
			@mass_kg=(value)
		rescue
			puts "Mass entered is not in number format, please enter as a number."
			user_input = gets.chomp.to_f
			@mass_kg = user_input
		end
	end 

	def distance_from_sun_km=(value)
		begin
			value > 0
			@distance_from_sun_km=(value)
		rescue
			puts "Distance entered is not in number format, please enter as a number."
			user_input = gets.chomp.to_f
			@distance_from_sun_km = user_input
		end
	end 

end