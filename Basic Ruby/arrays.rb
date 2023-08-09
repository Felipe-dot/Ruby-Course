# Creating Arrays
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

Array.new
# new(initial size and default value)
Array.new(3)
Array.new(3,7)
Array.new(3,true)

# Acessing Elements

=begin 

Ruby also allows the use of negative indices, which return elements 
starting from the end of an array, starting at [-1].

=end

str_array = ["This", "is", "a", "small", "array"]

str_array[0]
str_array[1]
str_array[4]
str_array[-1]
str_array[-2]

str_array.first
str_array.first(2)
str_array.last(2)

# Adding and Removing Elements
num_array = [1,2]

num_array.push(3,4)
num_array << 5
num_array.pop 
num_array

num_array = [2, 3, 4]

num_array.unshift(1)
num_array.shift
num_array

num_array = [1, 2, 3, 4, 5, 6]
num_array.pop(3)
num_array.shift(2)
num_array

# Adding and Subtracting Arrays
a = [1, 2, 3]
b = [3, 4, 5]

a + b 
a.concat(b)

[1, 1, 1, 2, 2, 3, 4] - [1, 4]

# Basic Methods
num_array.methods 

[].empty?
[[]].empty?
[1,2].empty?

[1, 2, 3].length

[1, 2, 3].reverse

[1, 2, 3].include?(3)
[1, 2, 3].include?("3")

[1, 2, 3].join
[1, 2, 3].join("-")




