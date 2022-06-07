loop do
  puts "enter STOP to stop"
  comm = gets.chomp
  break if comm == "STOP"
  puts comm
end