=begin 

Many languages distinguish between functions, which have no associated object, and methods, which are invoked on a receiver object. Because Ruby is a 
purely object-oriented language, all methods are true methods and are  associated with at least one object.

=end

# Creating a Method
def my_name
    "Luis Felipe"
end 

puts my_name 

# Parameters and Arguments
def greet(name)
    "Hello, " + name + "!"
end 

puts greet("Felipe")

# Default Parameters
def greet(name = "stranger")
    "Hello, " + name  + "!"
end

puts greet("Jane")
puts greet

def even_odd(number)
    if number % 2 == 0
        "That is an even number."
    else 
        "That is an odd number."
    end
end 

puts even_odd(16)
puts even_odd(17)

# Explicit Return
def my_name
    return "Joe Smith"
    "Jane Doe"
end
  
def even_odd_with_input_checking(number)
    unless number.is_a? Numeric
       "A number was not entered."
    end

    if number % 2 == 0
        "That is an even number."
    else 
        "That is an odd number."
    end
end 

puts even_odd(20) 
puts even_odd("Ruby") 

# Method that calculates the square of a number
def puts_squared(number)
    puts number * number 
end 

def return_squared(number)
    number * number 
end 

# Chaining Methods
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize

# Predicate Methods
=begin 
   ? -> These are all predicate methods, which is a naming convention that Ruby uses for methods that return a Boolean
=end

puts 5.even?
puts 6.even?
puts 17.odd?

puts 12.between?(10,15)

# Bang Methods
whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper  #=> "HELLO EVERYBODY"

=begin 
bang methods, which are denoted with an  exclamation mark (!) at the end of the method name. 
A ! to the end of your method, you indicate that this method performs its action and simultaneously overwrites the value of  the original object with the result.

=end

puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"

# Writing whisper.downcase! is the equivalent of writing whisper = whisper.downcase.