require 'pry'
require_relative 'planet'

def main 
	earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

	venus = Planet.new('Venus', 'White', 6.392e24, 2.982e9, 'Sister planet to Earth')

	puts earth.summary()
	puts earth.name
	puts earth.fun_fact

	puts venus.summary()
	puts venus.name
	puts venus.fun_fact
end

puts main