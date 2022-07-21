puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts "Enter 's to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  total = 0
  num.times { |x| total += x + 1}
  puts "The sum of the integers between 1 and #{num} is #{total}."
else
  total = 1
  num.times { |x| total *= x + 1}
  puts "The product of the integers between 1 and #{num} is #{total}."
end
