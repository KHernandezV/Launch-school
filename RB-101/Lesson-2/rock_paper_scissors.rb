VALID_CHOICES = %w(rock paper scissors lizard spock)
CONDITIONS = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard: ['spock', 'paper'],
  spock: ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  CONDITIONS[first.to_sym].include?(second)
end

def display_result(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt('It\'s a tie!')
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt('That\'s not a valid choice.')
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}, Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  prompt('Do you want to play again?(y/n)')
  replay = Kernel.gets().chomp().downcase
  break if replay != 'y'
end

prompt('Thank you for playing!')
