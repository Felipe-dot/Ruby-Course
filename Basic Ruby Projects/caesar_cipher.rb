def caesar_cipher(text, shift)
    result = ""
  
    text.each_char do |char|
      if char.match(/[a-zA-Z]/)
        ascii_offset = char.match(/[a-z]/) ? 'a'.ord : 'A'.ord
        shifted_char = ((char.ord - ascii_offset + shift) % 26 + ascii_offset).chr
        result << shifted_char
      else
        result << char
      end
    end
  
    result
  end

original_text = "Hello, World!"
shift_amount = 3
encrypted_text = caesar_cipher(original_text, shift_amount)

puts "Original text: #{original_text}"
puts "Encrypted text: #{encrypted_text}"
