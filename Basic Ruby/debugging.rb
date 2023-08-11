# Debugging with puts

# As an alternative to puts, p is also commonly used for debugging; p is a combination of puts and inspect

def isogram?(string)
    original_length = string.length
    p string_array = string.downcase.split('')
    p unique_length = string_array.uniq.length
    original_length == unique_length
end 

isogram?("Odin")

# Debugging with puts and nil
puts "Using puts:"
puts []
p "Using p:"
p []