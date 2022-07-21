puts "What is your name?"
name = gets.chomp

name = name.split('')
if name.last == "!"
  name.pop
  puts "HELLO #{name.join.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.join}"
end
