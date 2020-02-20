# Assignment Submission: Solar System

Congratulations! You're submitting your assignment. Please reflect on the assignment with these questions.

## Reflection

|  Question 	|  Answer
|---	|---	|
| When does the `initialize` method run? What does it do? | Initialize is a method that allows you to set initial values for an object and is run when you call .new. |
| Why do you imagine we made our instance variables readable but not writable? | For this project, we did not want to accidentally or purposely override our varibles. |
| How would your program be different if each planet was stored as a `Hash` instead of an instance of a class? | To get the planet name using the class is planet.name versus planet[:name] if it were a hash instead. |
| How would your program be different if your `SolarSystem` class used a `Hash` instead of an `Array` to store the list of planets? | Instead of an array of Planets, we would have an array of hashes containing planet information. |
| There is a software design principle called the SRP. The Single Responsibility Principle (SRP) says that each class should be responsible for exactly one thing. Do your classes follow SRP? What responsibilities do they have? | Yes, class Planet is responsible for being strictly a planet and nothing else. Solar system is the same. |
| How did you organize your `require` statements? Which files needed `require`s, and which did not? What is the pattern? | Any files that uses another's class requires requires_relative. In this case, the driver code (main.rb) required both the planet and solar system class files. The pattern is as follows: when main.rb read the solar_system.rb file, the main.rb also saw that the solar_system.rb already read the planet.rb file as well. So, the main.rb file did not actually need to require_relative on the planet.rb file. I thought of it as reading Harry Potter Book 3 where book 2 was already in memory and because I read book 2 then that means I have book 1 in memory. So....while I'm reading book 3, I don't need to go back to book 1 to look up characters since I already have them in memory. |
