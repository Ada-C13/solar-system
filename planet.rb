require 'pry'

class Planet
	attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
	def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
		@name = name
		@color = color
		@mass_kg = mass_kg
		@distance_from_sun_km = distance_from_sun_km
		@fun_fact = fun_fact
	end

	def summary()
		return "#{@name} is our home! We love how #{color} it is! #{@name} is #{mass_kg} kg and #{distance_from_sun_km} km from the sun. You might be surprised to find that #{fun_fact}."
	end
end