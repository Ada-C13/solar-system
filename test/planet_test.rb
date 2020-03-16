require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require 'pry'

require_relative '../lib/main'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "create two different instances of the Planet class" do
	it "raises an ArgumentError if mass_kg is not greater than zero" do
		earth = Planet.new("Earth", "blue-green", 0, 1.496e8, "Earth is the only planet known to support life")
		expect(earth).must_raise ArgumentError
	end

	it "raises an ArgumentError if distance_from_sun_km is not greater than zero" do
		earth = Planet.new("Earth", "blue-green", 5.972e24, 0, "Earth is the only planet known to support life")
		expect(earth).must_raise ArgumentError
	end
end