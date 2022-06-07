a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

b = []

a.each do |words| 
  b.push(words.split(" "))
end
print b
b = b.flatten
print b