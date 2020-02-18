require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'
require_relative 'planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "summary" do
  it "will return a string" do
    # Arrange & Act
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

    # Assert
    # The summary method will return a string
    expect(earth.summary).must_be_instance_of String
  end
end