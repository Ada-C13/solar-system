require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet" do 
  it "correctly reads and stores all 5 variables" do
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    summary = earth.summary
    expect(summary).must_equal "The blue-green planet Earth weighs 5.972e+24 kilograms and is located 149600000.0 kilometers from the sun. Only planet known to support life"
  end

  it "raises an ArgumentError on planets with invalid mass (mass equal or less than 0)" do
    planet_args = ['Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life']
    expect {
      Planet.new(*planet_args)
    }.must_raise ArgumentError
  end

  it "raises an ArgumentError on planets with invalid distance from sun (distance from sun equal or less than 0)" do
    planet_args = ['Earth', 'blue-green', 5.972e24, 0, 'Only planet known to support life']
    expect {
      Planet.new(*planet_args)
    }.must_raise ArgumentError
  end

end