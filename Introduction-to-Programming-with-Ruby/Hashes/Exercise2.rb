hash1 = { 1 => "one",2 => "two", 3 => "three"}
hash2 = { 4 => "four", 5 => "five"}
hash12 = hash1.merge(hash2)
puts "#{hash1} first hash from merge"
puts "#{hash2} second hash from merge"
puts "#{hash12} first and second hash merged into one hash"

hash3 = { 6 => "six",7 => "seven"}
hash4 = { 8 => "eight", 9 => "nine"}
hash3.merge!(hash4)
puts "#{hash3} first hash from merge!"
puts "#{hash4}  second hash from merge!"