require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative "../lib/main.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Planet" do
  # nominal cases
  it "initializes instances of planets" do
    # arrange & act - if i input this
    @planet = Planet.new("Earth", "blue", 100, 200, "has one moon")
    
    # assert - i expect this outcome
    expect(@planet).must_be_instance_of Planet
  end
  
  # edge cases
  it "returns an argument error if negative numbers are entered" do
    # assert - i expect this outcome
    expect { Planet.new("Earth", "blue", -100, -200, "has one moon") }.must_raise ArgumentError
  end
  
end


describe "Solar System" do
  # nominal cases
  it "initializes instances of solar systems" do
  
  end

  it "adds planets to @planets instance variable" do

  end 

  it "lists planets as a string" do
    
  end

  it "finds planets passed as a parameter" do
    
  end

  # edge cases

end