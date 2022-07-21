# prompt for text input
puts "Please write word(s):"
text = gets.chomp

# count the characters
count = text.split.join.length

# Display results
puts "There are #{count} characters in \"#{text}\""
