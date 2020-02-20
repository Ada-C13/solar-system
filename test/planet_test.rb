require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "check Planet class" do 
  it "Assign correct planet name" do
    planet_x = Planet.new("X","orange",1,10,"made up planet")
    expected = planet_x.name
    expect(expected).must_equal "X"
  end

  it "should raise error if input less than 0 on mass_kg" do
    expect {Planet.new("Y","orange",-1,10,"made up planet Y")}.must_raise ArgumentError
  end 

end 