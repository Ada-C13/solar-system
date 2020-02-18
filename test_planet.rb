require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'
require 'minitest/skip_dsl'

require_relative "planet"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet class" do
  it "raises Argumnet error if a planet's mass is less than zero" do
    expect{
      earth = Planet.new("Earth", "blue-green", -5.972e24, 1.496e8, "fun fun")
    }.must_raise ArgumentError
  end

  it "raises Argument error if a plantet's distance to the Sun is less then zero" do
    expect{
      earth = Planet.new("Earth", "blue-green", 5.972e24, -1.496e8, "fun fun")
    }.must_raise ArgumentError
  end
end