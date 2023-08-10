# Creating Hashes
my_hash = {
    "a random word" => "ahoy",
    "Dorothy's math test score" => 94,
    "an array" => [1, 2, 3],
    "an empty hash within a hash" => {}
}

my_hash = Hash.new 
my_hash

hash = { 9 => "nine", :six => 6 }

# Accessing Values
shoes = {
    "summer" => "sandals",
    "winter" => "boots"
}
  
shoes["summer"]

shoes["hiking"]   #=> nil

shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"

# Adding and Changing Data
shoes["fall"] = "sneakers"

shoes["summer"] = "flip-flops"

# Removing Data
shoes.delete("summer")
shoes

# Methods
books = {
    "Infinite Jest" => "David Foster Wallace",
    "Into the Wild" => "Jon Krakauer"
}

books.keys
books.values

# Merging Two Hashes
hash1 = {"a" => 100, "b" => 200}
hash2 = {"b" => 254, "c" => 300}
hash1.merge(hash2)

# Symbols as Hash Keys

# 'Rocket' syntax
american_cars = {
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Ram"
}

# 'Symbols' syntax
japanese_caras = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
}

american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"