require 'pry'

#### Question 1
# Define a class called `Pet`, and a class `Dog` that inherits from `Pet`.

class Pet
end

class Dog < Pet
end

#### Question 2
# Copy your class definitions from question 1 here.
# Then add an initializer to the `Pet` class that accepts a "name" argument
# and stores the value as an instance variable.

class Pet

  # ***CHANGED***: attr_accessor :name
  # ^ nice to have, but we may not HAVE to access or set the name
  # it's an automatic practice that i stick with "just in case",
  # which not might be very Agile,
  # but it's saved my butt before when working with Rails.
  # (or, more like, i specifically do it because
  # i have lost my butt before cause of it when working with Rails.)
  # now that i think about it, that's not always a good idea...

  def initialize(name)
    @name = name
  end
end

class Dog < Pet
end

#### Question 3
# Copy your class definitions from question 2 here.
# Then add an instance method called `bark` to the `Dog` class that returns the
# string "bark bark".

class Pet
  def initialize(name)
    @name = name
  end
end

class Dog < Pet
  def bark
    "bark bark"
  end
end


#### Question 4
# Write code that would create a new instance of the `Dog` class with the
# name "Lassie", and call the `bark` method on it.

lassie = Dog.new("Lassie")
lassie.bark
# i'm assuming you don't want to print it.

#### Question 5
# Write code to create a new array containing 3 dog names (as strings).
# Then write code to add the string "is a good dog!" to every name.
# Save the result in a new array, but don't output anything to the Terminal.

dog_names = ["Fido", "Rover", "Spot"]

these_dogs_are_good_dogs = dog_names.map do |name|
  name << " is a good dog!"
end

binding.pry

# [1] pry(main)> these_dogs_are_good_dogs
# => ["Fido is a good dog!", "Rover is a good dog!", "Spot is a good dog!"]