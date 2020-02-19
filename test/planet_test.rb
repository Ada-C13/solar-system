require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet Class Tests' do
  it 'creates new planet and gets name' do
    
    # Arrange: created a planet
    planet = Planet.new('abc', 'green', 100, 500, 'cool planet')
    
    # Act: test summary method
    summary = planet.summary
    
    # Assert: Result is 21
    expect(summary).must_equal("Planet:abc is the color:green, weighing: 100, and this far from the sun: 500. Here's a fun fact: cool planet.")

    expect(planet.name).must_equal('abc')
  end
end
