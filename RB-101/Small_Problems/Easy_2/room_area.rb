def area(height, width)
  height * width.to_f
end

puts " enter height in meters:"
height = gets.chomp.to_f

puts " enter width in meters:"
width = gets.chomp.to_f

area = area(height, width)

puts "The area of the room is #{area} square meters (#{(area * 10.7639).round(2)} square feet)."
