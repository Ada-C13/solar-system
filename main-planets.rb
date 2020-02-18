require_relative 'planets'

def main
  #instantiate
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  puts earth.name
# => Earth
  puts earth.fun_fact
# => Only planet known to support life
# => call summary
  puts earth.summary()

end
main
# Why do we puts in main but not in Planet#summary?

