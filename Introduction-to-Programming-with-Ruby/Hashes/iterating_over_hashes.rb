# iterating_over_hashes.rb

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |attr, val|
  puts "Bob's #{attr} is #{val}"
end