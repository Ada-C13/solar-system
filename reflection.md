# Assignment Submission: Solar System

Congratulations! You're submitting your assignment. Please reflect on the assignment with these questions.

## Reflection

|  Question 	|  Answer
|---	|---	|
| When does the `initialize` method run? What does it do? | The initialize method is the "starter" method that gets an instance of a class object going. 
| Why do you imagine we made our instance variables readable but not writable? | Because you didn't want the user to be able to change too much about the program (with the exception of the "add planet" method.)
| How would your program be different if each planet was stored as a `Hash` instead of an instance of a class? | Each planet's arguments would be easier to access from the main file. 
| How would your program be different if your `SolarSystem` class used a `Hash` instead of an `Array` to store the list of planets? | Symbols could be used to call the appropriate values. 
| There is a software design principle called the SRP. The Single Responsibility Principle (SRP) says that each class should be responsible for exactly one thing. Do your classes follow SRP? What responsibilities do they have? | Yes, they do. They have responsibilities to perform one action that can be called on in main to deliver an appropriate result. 
| How did you organize your `require` statements? Which files needed `require`s, and which did not? What is the pattern? | I organized my 'require' statements at the top of the program, along with pry. The files that needed 'require' were ruby files. The readme and feedback md files did not need that treatment. 
