require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/solar_system'
require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "SolarSystem" do 
earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
mars = Planet.new('Mars', 'red', 6.42e23, 2.279e8, 'It has two moons')
# venus = Planet.new('Venus', 'yellow', 4.87e24, 1.082e8, 'Sometimes referred to as morningstar')

  it "holds multiple planets" do
    solar_system = SolarSystem.new('Sol')
    solar_system.add_planet(earth)
    solar_system.add_planet(mars)
    expect(solar_system.planets.length).must_equal(2)
  end

  it "returns the 'first' planet by name" do
    solar_system = SolarSystem.new('Sol')
    solar_system.add_planet(mars)
    solar_system.add_planet(earth)
    solar_system.add_planet(Planet.new('eartH', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life'))
    expect(solar_system.find_planet_by_name("eArTh").name).must_equal("Earth")
  end

  it "calculates the distance between two planets" do
    solar_system = SolarSystem.new('Tinysol')
    puppyplanet = Planet.new('puppyplanet', 'pink', 6, 20, 'A tiny planet full of tiny puppies')
    kittenplanet = Planet.new('kittenplanet', 'white', 10, 100, 'A slightly bigger planet full of tiny kittens')
    solar_system.add_planet(puppyplanet)
    solar_system.add_planet(kittenplanet)
    expect(solar_system.distance_between(puppyplanet, kittenplanet).must_equal(80))
  end
  
end 