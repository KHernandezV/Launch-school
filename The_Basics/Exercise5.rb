numb = [5, 6, 7, 8]
factorial = []

for i in numb do
  n = i
  j = 1 
  while n > 1
    j *= n
    n -= 1
  end
  factorial.push(j)
end
puts factorial