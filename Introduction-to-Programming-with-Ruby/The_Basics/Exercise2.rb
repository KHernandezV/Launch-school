puts "Enter 4 digit number"
numb = gets.chomp()
num = numb.to_i

puts "ones place: #{num % 10}"
puts "tens place: #{num % 100 / 10}"
puts "hundreds place: #{num % 1000 / 100}"
puts "thousands place: #{num / 1000}"