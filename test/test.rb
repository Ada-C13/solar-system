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
  describe 'find_planet_by_name method' do
    it 'returns planet info when valid planet is provided' do
      solar_system = SolarSystem.new('Sol')

      earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')

      solar_system.add_planet(earth)

      earth_found = solar_system.find_planet_by_name('Earth')

      expect(earth_found).must_equal earth.summary
    end
  end
end