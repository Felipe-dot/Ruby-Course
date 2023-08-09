# Tipos de dados basicos
# numbers(intergers and floats),
# strings,
# symbols,
# Booleans  (true, false, and nil)

# numbers 

# Addition
1 + 1

# Substraction
2 - 1

# Multiplication
2 * 2 

# Division
10 / 5

# Expoent
2 ** 2 

3 ** 4

# Modulus
8 % 2 
10 % 4

# Converting Number Types

# To convert an interger to a float: 
12.to_f 

# To convert a float to an integer:
13.0.to_i 
13.9.to_i 

# Useful Number Methods

# even? 
6.even? 
7.even? 

# odd? 
6.odd? 
7.odd?

# Strings 
# Strings can be formed with either double "" or single'' quotation marks

# Concatenation 

# With the plus operator: 
"Welcome " + "to " + "Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")

# Substrings
"hello"[0] #=> "h"
"hello"[0..1] #=> "he"
"hello"[0,4] #=> "hell"
"hello"[-1] #=> "o"

# Interpolation 
name = "Odin"
puts "Hello, #{name}"
puts 'Hello, #{name}'

# Common String Methods

# capitalize
"hello".capitalize

# include?
"hello".include?("lo")
"hello".include?("z")

# upcase
"hello".upcase

# downcase
"hello".downcase 

# empty?
"hello".empty?
"".empty?

# length
"hello".length

# reverse
"hello".reverse

# split 
"hello world".split
"hello world".split("")
# strip
" hello, world   ".strip 

# Converting other objects to strings

5.to_s 

nil.to_s 

:symbol.to_s 

# Create a symbol
:my_symbol