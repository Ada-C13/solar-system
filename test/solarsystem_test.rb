require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/solar_system.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Solar System Class Tests' do
  it 'creates new solar system and gets name' do
    
    # Arrange:
    solar_system = SolarSystem.new('Sol') 
    
    # Assert
    expect(solar_system.star_name).must_equal('Sol')
  end
end