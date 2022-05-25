puts "enter positive number between 0 and 100"
numb = gets.chomp.to_i

case 
when numb <= 50 && numb >= 0
  puts "between 0 and 50"
when numb > 50 && numb <= 100
  puts "between 51 and 100"
else
  puts "above 100"
end