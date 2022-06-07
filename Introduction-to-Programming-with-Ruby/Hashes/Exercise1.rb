family = { 
  uncles: ["bob", "joe", "steve" ], 
  sisters: ["jane", "jill", "beth"], 
  brothers: ["frank", "rob", "david"], 
  aunts: ["mary", "sally", "susan"]
}

new_arr = family.select { |fam, val| fam == :brothers || fam == :sisters}
new_arr = new_arr.flatten 
puts new_arr