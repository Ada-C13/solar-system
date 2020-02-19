require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/main.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Solar System' do
  it 'does something great' do
    # Arrange
    variable_name = [input]

    # Act
    score = blackjack_score(hand)

    # Assert
    expect(score).must_equal 7
  end