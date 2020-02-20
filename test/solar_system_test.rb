require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/solar_system'
# require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "solar system" do 
  it "return correct distance between earth and mercury" do 
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    solar_system = SolarSystem.new('Sol')
    solar_system.add_planet(earth)
    mercury = Planet.new('Mercury','blue',3.285e23,4.809e7,"closest to sun")
    solar_system.add_planet(mercury)
    input = solar_system.distance_between('earth','mercury')
    expect(input).must_equal 101510000.0
  end 

  it "assign star name" do 
    output = SolarSystem.new('star_fake')
    expect(output.star_name).must_equal 'star_fake'
  end 
end 

