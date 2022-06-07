def if_upper(text)
  if text.length > 10
    return text.upcase
  end
end

puts "enter text"
textin = gets.chomp
textout = if_upper(textin)
puts textout