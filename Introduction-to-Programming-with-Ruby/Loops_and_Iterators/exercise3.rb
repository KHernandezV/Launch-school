puts "enter countdown length"
numb = gets.chomp.to_i

def countd(num)
  puts num
  if num > 0
    countd(num - 1)
  end
end

countd(numb)
