require 'colorize'
require 'terminal-table'

class Planet 
  attr_reader :name, :color, :mass_kg, :distance_from_sun_km, :fun_fact

  def initialize(name, color, mass_kg, distance_from_sun_km, fun_fact)
    if mass_kg.to_f <= 0 || distance_from_sun_km.to_f <= 0 
      raise ArgumentError.new("\n ==> Both <mass_kg> and <distance_from_sun_km> must be greater than zero.")
    end 

    @name = name.capitalize 
    @color = color.downcase 
    @mass_kg = mass_kg.to_f 
    @distance_from_sun_km = distance_from_sun_km.to_f 
    @fun_fact = fun_fact
  end 

  def summary 
    # Change lines
    if @fun_fact.length > 58
      @fun_fact = "#{@fun_fact[0..58]}\n#{@fun_fact[59..@fun_fact.length - 1]}"
    end 

    titles = ["Name", "Color", "Distance from sun", "Mass", "Fun fact"]
    contents = [@name.blue.bold, @color, "#{@distance_from_sun_km} km", "#{@mass_kg} kg", @fun_fact]

    table = Terminal::Table.new do |t|
      titles.each_with_index do |title, i|
        t << [title, contents[i]]
      end 
    end
    return table
  end 
end 