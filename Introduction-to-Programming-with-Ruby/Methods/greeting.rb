def greeting(name)
  return "hi, #{name}"
end

puts "enter your name"
name_user = gets.chomp

puts greeting(name_user)