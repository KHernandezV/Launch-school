# store the user input numbers, counter for looping, and ordinal numbers
counter = 0
number_prompt = %w(first second third fourth fifth last)
first_numbers = []
last_number = 0

# loop through the user inputting numbers
while counter < 6
  puts "==> Enter the #{number_prompt[counter]} number:"
  counter == 5 ? last_number = gets.chomp : first_numbers << gets.chomp
  counter += 1
end

# decide if the last number is included within the first 5 numbers
appear = "The number #{last_number} appears in #{first_numbers}"
not_appear = "The number #{last_number} does not appear in #{first_numbers}"

first_numbers.include?(last_number) ? puts(appear) : puts(not_appear)
