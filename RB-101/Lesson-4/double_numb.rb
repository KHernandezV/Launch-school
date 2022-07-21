def double_numbers(numbers)
  counter = 0

  loop do
    break if counter == numbers.length
    numbers[counter] = numbers[counter] * 2
    counter += 1
  end
end

def multiply(array, factor)
  counter = 0

  loop do
    break if counter == array.length
    array[counter] = array[counter] * factor
    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]

multiply(my_numbers, 4)

puts my_numbers

