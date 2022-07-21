#variables storing the values of cards
FACE = 10
ACE = 1

loop do
  #hash containing deck
  deck = {
    spades: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'King', 'Queen', 'Ace'],
    hearts: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'King', 'Queen', 'Ace'],
    clubs: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'King', 'Queen', 'Ace'],
    diamonds: [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'King', 'Queen', 'Ace']
  }
  #method to deal out cards and remove them from deck
  def deal(deck)
    face = ["spades", "hearts", "clubs", "diamonds"].sample.to_sym
    value = deck[face].sample
    deck[face].delete(value)
    [face, value]
  end

  def hand_value(hand)
    value = 0
    ace_count = 0
    hand.each do |card|
      if card[1].is_a?(Integer)
        value += card[1]
      elsif card[1].is_a?(String)
        ace_count += 1 if card[1] == 'Ace'
        value += 10
      end
    end
    while value > 21 && ace_count > 0
      ace_count -= 1
      value -= 9
    end
    value
  end

  player_hidden = [deal(deck)]
  player_shown = [deal(deck)]
  dealer_hidden = [deal(deck)]
  dealer_shown = [deal(deck)]
  player_hand_val = hand_value(player_hidden) + hand_value(player_shown)
  dealer_hand_val = hand_value(dealer_hidden) + hand_value(dealer_shown)



  puts "Player is dealt the #{player_hidden[0][1]} of #{player_hidden[0][0]} facedown"
  puts "Player is dealt the #{player_shown[0][1]} of #{player_shown[0][0]} facing up"
  puts "Dealer is dealt the #{dealer_shown[0][1]} of #{dealer_shown[0][0]} facing up"
  puts "Dealer is dealt a facedown card"

  loop do
    puts "Hit again?(y/n)"
    hit = gets.chomp.downcase
    break if hit == 'n'
    player_shown  << deal(deck)
    puts "your hand:"
    puts "#{player_hidden[0][1]} of #{player_hidden[0][0]}"
    player_shown.each { |face, value| puts "#{value} of #{face}" }
    puts "total hand value is: #{hand_value(player_hidden) + hand_value(player_shown)}"
    break if hand_value(player_hidden) + hand_value(player_shown) >= 21
  end

  if hand_value(player_hidden) + hand_value(player_shown) > 21
    puts "Bust!"
    break
  end

  loop do 
    break if hand_value(dealer_hidden) + hand_value(dealer_shown) >= 17
    dealer_shown << deal(deck)
  end

  dealer_total = hand_value(dealer_hidden) + hand_value(dealer_shown)
  player_total = hand_value(player_hidden) + hand_value(player_shown)

  puts "You are winner" if dealer_total > 21 || player_total > dealer_total
  puts "Dealer wins!" if dealer_total > player_total && dealer_total <= 21

  puts hand_value(player_hidden) + hand_value(player_shown)
end