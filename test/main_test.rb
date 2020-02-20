require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet.rb'
require_relative '../lib/solar_system.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'planet' do
  it "will return ArgumentError if weight or mass is 0 or less" do 
    expect{Planet.new('earth', 'blue-green', 0, 92.96, 'Only planet known to support life')}.must_raise ArgumentError
    expect{Planet.new('earth', 'blue-green', 5.972e24, 0, 'Only planet known to support life')}.must_raise ArgumentError
  end
end

describe 'solar_system' do
  it "return the instance of a planet if the name is found regardles of case" do
    earth = Planet.new('earth', 'blue-green', 5.972e24, 92.96, 'Only planet known to support life')
    milky_way = SolarSystem.new("Sun")
    milky_way.add_planet(earth)

    expect(milky_way.find_planet_by_name("earth")).must_equal earth
    expect(milky_way.find_planet_by_name("eArTh")).must_equal earth
  end
end