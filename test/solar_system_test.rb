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
    input = solar_system.distance_between('earth','mercury')
    expect(input).must_equal 101510000.0
  end 
end 

