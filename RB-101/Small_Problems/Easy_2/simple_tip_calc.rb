puts "What is the bill?"
total = gets.chomp.to_i
puts "What is the tip percentage?"
tip = gets.chomp.to_i

puts "The tip is $#{(total.to_f / 100 * tip).round(2)}"
puts "The total is $#{(total.to_f / 100 * tip).round(2) + total}"
