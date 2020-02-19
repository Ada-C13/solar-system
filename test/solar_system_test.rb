describe "== SolarSystem class ==" do 
  it "will return corresponding values for instance variables of <SolarSystem> class" do 

    # Arrange 
    solar_system = SolarSystem.new('Sun')

    # Act & Assert
    expect(solar_system.star_name).must_equal "Sun"
  end 


  it "will return corresponding data types for instance variables of <SolarSystem> class" do 

    # Arrange 
    solar_system = SolarSystem.new('Sun')

    # Act & Assert
    expect(solar_system.planets).must_be_instance_of Array 
    solar_system.planets.each do |planet_instance|
      expect(planet_instance).must_be_instance_of Planet # Planet class
    end 
  end 
end 


describe "== <add_planet(planet_instance)> method ==" do 
  it "will raise an ArgumentError if the planet already exists in our system" do 
    
    # Arrange 
    solar_system = SolarSystem.new('Sun')
    mars = Planet.new('Mars', 'orange-reddish', 6.39e23, 2.302e8, 'Mars’s gravity is 38 percent of Earth’s.\nSo if you weigh 60 pounds here, you’d weigh about 23 pounds there.')
    solar_system.add_planet(mars)

    # Act & Assert 
    expect{
      solar_system.add_planet(mars)
    }.must_raise ArgumentError
  end 
end 


describe "== <list_planets> method ==" do 
  it "will return a string as data type" do 
    
    # Arrange 
    solar_system = SolarSystem.new('Sun')
    mars = Planet.new('Mars', 'orange-reddish', 6.39e23, 2.302e8, 'Mars’s gravity is 38 percent of Earth’s.')
    solar_system.add_planet(mars)

    # Act & Assert 
    expect(solar_system.list_planets).must_be_instance_of String
  end 
end 


describe "== <find_planet_by_name(planet_name)> method ==" do
  it "will raise an ArgumentError if the given planet by user does not exist in our system" do 
    # Arrange 
    solar_system = SolarSystem.new('Sun')
    mars = Planet.new('Mars', 'orange-reddish', 6.39e23, 2.302e8, 'Mars’s gravity is 38 percent of Earth’s.')
    solar_system.add_planet(mars)

    # Act & Assert 
    expect(solar_system.find_planet_by_name("Mars")).must_be_instance_of Planet # Planet class

    expect{
      solar_system.find_planet_by_name("Earth")
    }.must_raise ArgumentError
  end 
end 

describe "== <distance_between> method ==" do 
  it "will return float as data type" do 
    
    # Arrange 
    solar_system = SolarSystem.new('Sun')
    mars = Planet.new('Mars', 'orange-reddish', 6.39e23, 2.302e8, 'Mars’s gravity is 38 percent of Earth’s.')
    earth = Planet.new('Earth', 'blue-green', 150, 28.8, 'Only planet known to support life') 
    solar_system.add_planet(mars)
    solar_system.add_planet(earth)

    # Act & Assert 
    expect(solar_system.distance_between("Mars", "Earth")).must_be_instance_of Float 
  end 
end 