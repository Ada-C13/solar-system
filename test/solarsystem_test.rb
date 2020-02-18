require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/solar_system'
require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "SolarSystem" do 
earth_args = ['Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life']
mars_args = ['Mars', 'red', 6.42e23, 2.279e8, 'It has two moons']
venus_args = ['Venus', 'yellow', 4.87e24, 1.082e8, 'Sometimes referred to as morningstar']

  it "correctly adds objects to the SolarSystem object" do
    solar_system = SolarSystem.new('Sol')
    solar_system.add_planet(Planet.new(*earth_args))
    expect(solar_system.find_planet_by_name("Earth")).must_be_instance_of(Planet)
  end 

  it "returns the 'first' planet by name" do
    solar_system = SolarSystem.new('Sol')
    solar_system.add_planet(Planet.new(*mars_args))
    solar_system.add_planet(Planet.new(*earth_args))
    solar_system.add_planet(Planet.new('earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life'))
    expect(solar_system.find_planet_by_name("eArTh").name).must_equal("Earth")
  end

end 