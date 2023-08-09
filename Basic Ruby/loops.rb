# Loop

i = 0
loop do 
    puts "i is #{i}"
    i += 1
    break if i == 10
end 

# While Loop
i = 0 
while i < 10 do 
    puts "i is #{i}"
    i += 1 
end 


while gets.chomp != "yes" do 
    puts "Will you go to prom with me?"
end 

# Until Loop
i = 0
until i >= 10 do 
    puts "i is #{i}"
    i += 1 
end 

until gets.chomp == "yes" do 
    puts "Do you like Pizza?"
end 

# Ranges
(1..5)
(1...5)

 ('a'..'d')

# For Loop
for i in 0..5
    puts "#{i} zombies incoming!"
end  

# Times Loop
5.times do 
    puts "Hello, world!"
end

5.times do |number|
    puts "Alternative fact number #{number}"
end    

# Upto and Downto Loops
5.upto(10){ |num| print "#{num} " }

10.downto(5) { |num| print "#{num} "}