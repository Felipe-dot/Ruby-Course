# Nested Arrays
test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
]

teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
]

# Acessing Elements

teacher_mailboxes[0][0] #=> "Adams"
teacher_mailboxes[1][0] #=> "Jones"
teacher_mailboxes[2][0] #=> "Perez"

# Using negative indices

teacher_mailboxes[0][-1] #=> "Davis"
teacher_mailboxes[-1][0] #=> "Perez"
teacher_mailboxes[-1][-2] #=> "Smith"

# Acess an index of a noexistent nested element, it will raise an NoMethodError
teacher_mailboxes[3][0]

# Using the #dig method will returned the nil value
teacher_mailboxes.dig(3, 0)

# Creating a new nested array
mutable = Array.new(3, Array.new(2))

mutable[0][0] = 1000

mutable 

# Now omits the second optional argument
immutable = Array.new(3) {Array.new(2)}

immutable[0][0] = 1000

immutable

# Adding and Removing Elements
test_scores << [100, 99, 98, 97]

test_scores[0].push(100)

test_scores

test_scores.pop

test_scores[0].pop

# Iterating over a nested array

teacher_mailboxes.each_with_index do |row, row_index|
    puts "Row:#{row_index} = #{row}"
end

teacher_mailboxes.each_with_index do |row, row_index|
    row.each_with_index do |teacher, column_index|
      puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
    end
end

# Using #flatten
teacher_mailboxes.flatten.each do |teacher|
    puts "#{teacher} is amazing!"
end

# Determine if any student scored higher than 80 on everything.
test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

test_scores.any? do |scores|
    scores.all? { |score| score > 80 }
end

test_scores.all? do |scores|
    scores.any? { |score| score > 80 }
end

# Nested Hashes
vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
}

# Acessing Data

vehicles[:alice][:year] #=> 2019
vehicles[:blake][:make] #=> "Volkswagen"
vehicles[:caleb][:model] #=> "Accord"

# Similar to nested arrays, if you try to access a key in a nonexistent nested hash, it will raise an NoMethodError

vehicles[:zoe][:year] #=> NoMethodError

# Adding and Removing Data
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}

vehicles[:dave][:color] = "red"

vehicles.delete(:blake)

vehicles[:dave].delete(:color)

# Methods 
vehicles.select { |name, data| data[:year] >= 2020 }
vehicles.collect { |name, data| name if data[:year] >= 2020 }

# Avoiding the nil value
vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact

vehicles.filter_map { |name, data| name if data[:year] >= 2020 }