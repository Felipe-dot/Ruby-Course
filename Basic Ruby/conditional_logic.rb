if room_tidy == true 
    "I can play video games"
end

if statement_to_be_evaluated == true 
    # do somothing awesome...   
end 

if 1 < 2 
    puts "Hot diggity, 1 is less than 2!"
end 

puts "Hot diggity damn, 1 is less than 2" if 1 < 2

# Adding else and elsif
if attack_by_land == true
    puts "release the goat"
else
    puts "release the shark"
end

if attack_by_land == true
    puts "release the goat"
elsif attack_by_sea == true 
    puts "release the shark"
else
    puts "release Kevin the octopus"
end

# Boolean Logic
5 == 5
5 == 6 

5 != 7
5 != 5

7 > 5 
5 > 7

7 < 5 
5 < 7

7 >= 5 
5 >= 7

7 <= 5 
5 <= 7

# eql?  checks both the value type and the actual value it holds.
5.eql?(5.0)
5.eql?(5)

# spaceship operator
=begin 
   . -1 if the value on the left is less than the value on the right;
   .  0 if the value on the left is equal to the value on the right; and
   .  1 if the value on the left is greater than the value on the right.
=end

5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1

# Logical Operators

if 1 < 2 && 5 < 6
    puts "Party at Kevin's!"
  end
  
# This can also be written as
if 1 < 2 and 5 < 6
puts "Party at Kevin's!"
end

if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
    puts "Party at Kevin's!"
  end
  
# This can also be written as
if 10 < 2 or 5 < 6
puts "Party at Kevin's!"
end

# Case statements

grade = 'F'

did_i_pass = case grade 
    when 'A' then "Hell yeah!"
    when 'D' then "Don't tell your mother."
    else "'YOU SHALL NOT PASS!' - Gandalf"
end

case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

# Unless Statements
age = 19
unless age < 18
  puts "Get a job."
end