# inline_exception_example.rb

zero = 0

puts "before each call"
zero.each { |element| puts element} rescue puts "Can't do that!"
puts "After each call"