def loan_calc(initial, interest, duration) # method to calculate monthly payment
  initial * (interest / (1 - (1 + interest)**(-duration)))
end

puts('welcome to the APR calculator. we need some info from you')
puts('enter loan amount')
loan_amount = ''
loop do # loop to get a valid loan amount
  loan_amount = gets.chomp.to_f
  if loan_amount > 0
    break
  else
    puts('enter valid amount')
  end
end

puts('enter APR')
apr = ''
loop do # loop to get a valid apr
  apr = (gets.chomp.to_f / 1200).to_f
  if apr > 0
    break
  else
    puts('enter valid APR(more than 0%)')
  end
end

puts('enter loan duration(months)')
loan_dur = ''
loop do # loop to get a valid loan duration
  loan_dur = gets.chomp.to_f
  if loan_dur > 0
    break
  else
    puts('enter valid duration')
  end
end

monthly_pay = loan_calc(loan_amount, apr, loan_dur) # saving the result of
# calling the method with the data provided by user

puts("your monthly payment is:\n#{monthly_pay}") # print out monthly payment
# to console
