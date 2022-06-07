list = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']

def lab_chk(words)
  words.each do |word|
    if word =~ /lab/
      puts word
    else
      next
    end
  end
end

lab_chk(list)
