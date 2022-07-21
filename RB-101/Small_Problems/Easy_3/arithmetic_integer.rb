# store the operands
oper = %w(+ - * / % **)

# ask for the first number and second number
puts "==> Enter the first number:"
first_num = gets.chomp.to_i
puts "==> Enter the second number:"
second_num = gets.chomp.to_i

# loop through calculations
counter = 0
while counter < 6
  value = first_num.public_send(oper[counter], second_num)
  puts " ==> #{first_num} #{oper[counter]} #{second_num} = #{value}"
  counter += 1
end
