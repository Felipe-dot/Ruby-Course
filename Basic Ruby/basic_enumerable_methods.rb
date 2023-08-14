# Life before enumerables

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
    if friend != 'Brian'
    invited_list.push(friend)  
    end
end

invited_list

friends.select {|friend| friend != 'Brian'}
friends.reject {|friend| friend == 'Brian'}

# The each method

# Block variable -> |variable|
friends.each { |friend| puts "Hello, " + friend }

# Using a block do...end
my_array = [1,2]

my_array.each do |num|
    num *= 2
    puts "The new number is #{num}."
end 

# Using in hashes
my_hash = {"one" => 1, "two" => 2}

# Using the Key and the Value individually
my_hash.each { |key, value| puts "#{key} is #{value}" }

# Using the Key and the Value together
my_hash.each { |pair| puts "the pair is #{pair}" }

# The each_with_index Method

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index {|fruit, index| puts fruit if index.even? }

# The map Method
shouting_at_friends=[]

friends.each { |friend| shouting_at_friends.push(friend.upcase) }

shouting_at_friends

friends.map { |friend|  friend.upcase }

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

my_order.map { |item| item.gsub('medium', 'extra large') }

salaries = [1200, 1500, 1100, 1800]

salaries.map { |salaray| salary - 700 }

# The select Method
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = [] 

friends.each do |friend|
    if friend != 'Brian'
        invited_list.push(friend)
    end
end 

# Using select methods, this code goes to two lines
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }

# Who's coming 
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes'}
responses.select { |person, response| response == 'yes'}

# The reduce Method

my_numbers = [5, 6, 7, 8]
sum = 0
# Sum an array using #each

my_numbers.each { |numbers| sum += number}

sum 

# Sum an array using reduce
my_numbers.reduce { |sum, number| sum + number}

# Set a different initial value for the accumulator
my_numbers.reduce(1000)

# Where to go
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end

# Bang Methods
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# Not overwrithing the original value
friends.map { |friend| friend.upcase }

# Overwrithing the original value
friends.map! { |friend| friend.upcase }

# Return Values of Enumerables
invited_friends = friends.select { |friend| friend != 'Brian' }

def invited_friends(friends)
    friends.select { |friend| friend != 'Brian' }
end