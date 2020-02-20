require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../main.rb'

describe "Planet class constructor method" do
  it "accepts valid input and requires all parameters" do
    #instantiate object with appropriate arguments
    mercury = Planet.new('Mercury', 'yellow-blue', 3.285e23, 5.791e7, 'Mercury is the fasest planet. Completing a full circle around the sun in 88 days')
    #checks that mercury is planet class
    expect(mercury.class).must_be_instance_of Planet
    #checks attributes of mercury are accurate
    expect(mercury.name).must_equal "Mercury"
  end
  it "throws an Argument Error if invalid mass or distance is given" do
    #instantiate object with inappropriate distance argument
    expect(mercury = Planet.new('Mercury', 'yellow-blue', 3.285e23, "five million", 'Mercury is the fasest planet. Completing a full circle around the sun in 88 days')).must_raise ArgumentError

    expect(mercury = Planet.new('Mercury', 'yellow-blue', "literally anything", 5.791e7, 'Mercury is the fasest planet. Completing a full circle around the sun in 88 days')).must_raise ArgumentError
  end
end

describe do
  it do
  end
end