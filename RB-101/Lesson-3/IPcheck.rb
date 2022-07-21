def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.length != 4
  while dot_separated_words.size > 0
    word = dot_separated_words.pop.to_i
    puts word
    return false if isnt_an_ip_number?(word)
  end
  true
end

def isnt_an_ip_number?(word)
  word > 255 || word < 0
end

ip = ''
do_again = ''
loop do
  puts('enter IP')
  ip = gets.chomp
  dot_separated_ip_address?(ip) ? puts('Looks good') : puts('Not a valid IP')
  puts('check another IP?(y/n)')
  do_again = gets.chomp.downcase
  break if do_again == 'n'
end
