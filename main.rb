# main.rb

require_relative 'planet'

def main

  # Instance of Planet 1
  venus = Planet.new('Venus', 'yellowish', 108212290.56, 4.867e+24, 'Lady Gaga has an absolute banger on her Artpop album also titled "Venus".')

  puts venus.summary 

  # Instance of Planet 2 
  neptune = Planet.new('Neptune', 'blue', 2781900000, 1.024e+26, 'its cold and scary.')

  puts neptune.summary
end 

main # invoke main 