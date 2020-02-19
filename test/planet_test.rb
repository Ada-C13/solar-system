require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'planet' do
  it 'takes in an argurment that is a number that is greater than 0' do
    mass_kg = mass_kg
    expect{Planet.new('earth','blue-green', 0, 10, 'the only planet that can support life' )}.must_raise ArgumentError
  end
  
  it 'takes in an argurment that is a number that is greater than 0' do
    distance_from_sum_km = 0
    expect{Planet.new('earth','blue-green', 10, 0, 'the only planet that can support life' )}.must_raise ArgumentError
  end
end