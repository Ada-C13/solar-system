require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/planet.rb'
# require_relative ''

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'planet' do
  it "will return ArgumentError if weight or mass is 0 or less" do 
    expect{Planet.new('earth', 'blue-green', 0, 92.96, 'Only planet known to support life')}.must_raise ArgumentError
    expect{Planet.new('earth', 'blue-green', 5.972e24, 0, 'Only planet known to support life')}.must_raise ArgumentError
  end
end