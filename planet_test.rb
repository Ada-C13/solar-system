require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'planet'

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