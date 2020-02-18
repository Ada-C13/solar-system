require 'minitest'
require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/pride'

require_relative '../lib/main.rb'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
  it 'must raise an error if mass_kg is a negative number' do
    expect {
      Planet.new("Earth", "blue-green", -5.972e24, 1.496e8, "Home planet to human race.")
    }.must_raise ArgumentError
  end

  it 'must raise an error if distance from Sun is a negative number' do
    expect {
      Planet.new("Earth", "blue-green", 5.972e24, -1.496e8, "Home planet to human race.")
    }.must_raise ArgumentError
  end

  it 'must raise an error if mass_kg is zero' do
    expect {
      Planet.new("Earth", "blue-green", 0, 1.496e8, "Home planet to human race.")
    }.must_raise ArgumentError
  end

  it 'must raise an error if distance from Sun is zero' do
    expect {
      Planet.new("Earth", "blue-green", 5.972e24, 0, "Home planet to human race.")
    }.must_raise ArgumentError
  end

  it 'must raise an error if mass_kg is not a number' do
    expect {
      Planet.new("Earth", "blue-green", "a lot", 1.496e8, "Home planet to human race.")
    }.must_raise ArgumentError
  end

  it 'must raise an error if distance from Sun is not a number' do
    expect {
      Planet.new("Earth", "blue-green", 5.972e24, "I don't know", "Home planet to human race.")
    }.must_raise ArgumentError
  end
end