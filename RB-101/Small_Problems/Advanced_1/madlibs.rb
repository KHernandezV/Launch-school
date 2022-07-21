adjectives = %w(quick lazy sleepy ugly)
nouns = %w(fox dog head leg)
verbs = %w(jumps lifts bites licks)
adverb = %w(easily lazily noisily excitedly)


text = File.read('madlibs_txt.txt')

puts format(text)