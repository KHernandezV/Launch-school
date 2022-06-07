array_old = [5, 3, 1, 7, 2]
array_new = []
array_old.each do |num|
  array_new.push(num + 2)
end
p array_old
p array_new