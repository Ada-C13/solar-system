require_relative "main"
require_relative "planet"

describe "Planet" do 
  describe "initialize" do
    it "raise ArgumentError when the mass_kg is not a positive number" do
      initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    
      ArgumentError
