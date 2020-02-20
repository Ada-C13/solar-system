require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'

require_relative '../lib/planet'
require_relative '../lib/solar_system'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe 'Planet' do
  describe 'initialize method' do
    it 'only takes numbers larger than zero' do
      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

      expect(earth.mass_kg).must_be :>, 0
      expect(earth.distance_from_sun_km).must_be :>, 0
    end
  end
end

describe 'SolarSystem' do
  # initialize variables to use in tests
  solar_system = SolarSystem.new('Sol')

  earth = Planet.new('Earth', 'blue-green', 5, 20, 'Only planet known to support life')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 45, 'Jupiter is the largest planet in our Solar System.')
  pluto = Planet.new('Pluto', 'black', 1.898e27, 75, 'Pluto is the cutest planet.')

  solar_system.add_planet(earth)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(pluto)

  describe 'find_planet_by_name method' do
    it 'returns planet info when valid planet is provided' do
      earth_found = solar_system.find_planet_by_name('Earth')

      expect(earth_found).must_equal earth
    end
  end

  describe 'distance_between method' do
    it 'returns correct distance between planets' do
      distance_between_earth_jupiter = solar_system.distance_between(earth, jupiter)
      distance_between_pluto_earth = solar_system.distance_between(pluto, earth)

      expect(distance_between_earth_jupiter).must_equal 25
      expect(distance_between_pluto_earth).must_equal 55
    end
  end
end