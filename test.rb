require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet'
require_relative 'solar_system'

Minitest::Reporters.use!

describe 'planet' do
  it "Will raise argument error for mass less than or equal to zero." do
    expect { Planet.new("Earth", "blue", 0, (40075 * 10**6), "is 71% water.")
    }.must_raise ArgumentError 
  end

  it "Will raise argument error for distance less than or equal to zero." do
    expect { Planet.new("Earth", "blue", (5.972 * 10**24), 0, "is 71% water.")
    }.must_raise ArgumentError 
  end
end
describe 'solar_system: find_planet_by_name' do
  earth = Planet.new("Earth", "blue", (5.972 * 10**24), (1.479 * 10**6), "is 71% water.")
  mars = Planet.new("Mars", "red", (6.39 * 10**23), (2.303 * 10**6), "is the smallest planet in the solar system.")
  earth2 = Planet.new("Earth", "blue", (5.972 * 10**24), (1.479 * 10**6), "is 71% water.")
  sol = SolarSystem.new("The Sun")
  sol.add_planet(earth)
  sol.add_planet(mars)
  sol.add_planet(earth2)

  it "returns instance of Planet" do
    expect(sol.find_planet_by_name("mars")).must_be_instance_of Planet
  end
  it "returns nil if no planet found" do
    expect(sol.find_planet_by_name("SATURN")).must_equal nil
  end
  it "finds two planets of same name" do
    expect {sol.find_planet_by_name("Earth")}.must_raise ArgumentError 
  end
end
