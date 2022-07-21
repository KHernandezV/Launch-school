def double_odd_indices(arr)
  counter = 0
  loop do
    break if counter == arr.length
    arr[counter] = arr[counter] * 2 if counter.odd?
    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]

double_odd_indices(my_numbers)

puts my_numbers