hash = { a: "ei", b: "bi", c: "ci", di: "di"}

puts hash.keys
puts hash.values
hash.each_pair {|letter, pron| puts "#{letter} is pronounced #{pron}"}