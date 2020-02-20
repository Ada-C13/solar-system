require "pry"
require_relative "planet"
require_relative "solar_system"


def main()

  our_ss = SolarSystem.new("Sol")

  mercury = Planet.new("Mercury", "dark gray", "3.285 × 10^23 kg", "48.091 million km", "Calvin from Calvin and Hobbes did a lightning talk about the planet Mercury.")

  venus = Planet.new("Venus", "ochre", "4.867 × 10^24 kg", "107.73 million km", "One day on Venus lasts 243 days on Earth.")

  earth = Planet.new("Earth", "lapis and emerald-hued", "5.972 × 10^24 kg", "147.86 million km", "Every winter, approximately one trillion trillion snow crystals fall from the sky.")

  mars = Planet.new("Mars", "rust-colored", "6.39 × 10^23 kg", "228 million km", "Mars is home to the tallest mountain in the solar system, Olympus Mons, which is over 21 km high.")

  jupiter = Planet.new("Jupiter", "inconsistently colored", "1.898 × 10^27 kg", "779.76 million km", "Jupiter is the fastest-spinning planet in the universe, and takes only ten hours to complete a full rotation on its axis.")

  saturn = Planet.new("Saturn", "the color of bad buttermilk", "5.683 × 10^26 kg", "1.4975 billion km", "You can't stand on Saturn: it's made of gasses.")

  uranus = Planet.new("Uranus", "the color of wintermint gum", "8.681 × 10^25 kg", "2.964 billion km", "The naming theme for Uranus' moons are the characters from works by Shakespeare and Alexander Pope.")

  neptune = Planet.new("Neptune", "cobalt blue", "1.024 × 10^26 kg", "4.477 billion km", "Only one spacecraft has ever flown past Neptune: the Voyager 2, in 1989.")

  our_ss.add_planet(mercury)
  our_ss.add_planet(venus)
  our_ss.add_planet(earth)
  our_ss.add_planet(mars)
  our_ss.add_planet(jupiter)
  our_ss.add_planet(saturn)
  our_ss.add_planet(uranus)
  our_ss.add_planet(neptune)

  puts "Welcome to Life on Mars: The Trivial Pursuit Planet Program. Which action would you like to take?"
  puts "Please enter the letter of the option you'd like to pick:"
  puts "A.) List the planets in our solar system."
  puts "B.) Exit this program."
  puts "C.) Planet Details."
  puts "D.) Enter new planet."
  
  
  menu = ""
  
  until menu == "B"
    menu = gets.chomp.upcase
    case menu 
    when "A"
      puts our_ss.list_planets
    when "B"
      puts "Thanks for stopping by this godawful small affair!"
      exit
    when "C"
      puts "Please enter the name of the planet you'd like details about."
      req_planet = gets.chomp.upcase
      our_ss.planets.each do |planet|
        if req_planet == planet.name.upcase 
          puts planet.summary
        end 
      end
    when "D"
      puts "Please enter the name of the planet you'd like to add to the solar system."
      name = gets.chomp 
      puts "Please enter the planet's color."
      color = gets.chomp 
      puts "How much does your planet weigh?"
      weight = gets.chomp
      puts "How many kilometers from the sun is the planet?"
      distance = gets.chomp 
      puts "Last one: please enter a fun fact about the planet."
      fact = gets.chomp
      user_gen_planet = Planet.new(name, color, weight, distance, fact)
      our_ss.add_planet(user_gen_planet)
      puts our_ss.list_planets
    else 
      puts "Sorry, you've made an oopsie."  
    end 
  end
end 

main()