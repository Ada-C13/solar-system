class Planet
	attr_accessor :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact
	
	def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
		@name = name
		@color = color
		@mass_kg = mass_kg
		@distance_from_sun_km = distance_from_sun_km
		@fun_fact = fun_fact

		raise ArgumentError.new("Mass and distance from sun must be greater than zero") if @mass_kg < 0.0000001 || @distance_from_sun_km < 0.0000001
	end

	def summary
		return "\n#{self.name} is a #{self.color} planet with a mass of #{self.mass_kg} kg and a distance from the sun of #{self.distance_from_sun_km} km. #{self.name} is #{self.fun_fact}.\n"
	end
end