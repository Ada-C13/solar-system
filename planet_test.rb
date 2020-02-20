require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require "minitest/skip_dsl"
require 'pry'

require_relative 'planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Solar system excercise" do

  it "Raises and argument error if the value of the planet mass is equal to or smaller than zero" do 
    
    expect {
      # What goes inside of the expect {...} is
      # the line of code that raises the error
      earth = Planet.new('Earth', 'blue-green', 0, 1.496e8, 'Only planet known to support life')
    }.must_raise ArgumentError
  end

  it "Raises and argument error if the value of the planet distance from sun is equal to or smaller than zero" do 
    expect {
      earth = Planet.new('Earth', 'blue-green', 1, 0, 'Only planet known to support life')
    }.must_raise ArgumentError
  end
end

