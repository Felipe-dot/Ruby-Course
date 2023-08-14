# The include? Method

numbers = [5, 6, 7, 8]
element = 6
result = false

numbers.each do |number|
    if number == element 
        result = true
    end
end 

result # => true

element = 3
result = false

numbers.each do |number|
    if number == element
        result = true
    end 
end 

result # => false

# Using #include?, the code can be simplified
numbers.include?(6)
numbers.include?(3)

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_list = friends.select { |friend| friend != 'Brian' }

invited_list.include?('Brian')

# The any? Method
# See if there is any number greater than 500 or less than 20 in an array of numbers using #each.
numbers = [21, 42, 303, 499, 550, 811]
result = false

numbers.each do |number|
    if number > 500
        result = true
    end 
end 

result #=> true

numbers = [21, 42, 303, 499, 550, 811]
result = false

numbers.each do |number|
    if number < 20
        result = true
    end
end

result #=> false

# Now using #any? instead of #each
numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
numbers.any? { |number| number < 20 }

# The all? Method

# Check whether all the words in our list are more than 6 characters long using #each.

fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false

fruits.each do |fruit|
    if fruit.length > 3
        matches.push(fruit)
    end
    
    result = fruits.length == matches.length
end

result
#=> true

fruits = ["apple", "banana", "strawberry", "pineapple"]
matches = []
result = false

fruits.each do |fruit|
    if fruit.length > 6
        matches.push(fruit)
    end
    
    result = fruits.length == matches.length
end

result
# Now using #all? instead of #each
fruits.all? { |fruit| fruit.length > 3 }
fruits.all? { |fruit| fruit.length > 6 }

# The none? Method
fruits.none? { |fruit| fruit.length > 10 } #=> true
fruits.none? { |fruit| fruit.length > 6 }  #=> false