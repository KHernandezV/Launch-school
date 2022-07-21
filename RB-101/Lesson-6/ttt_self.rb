def display_board(arr_player, arr_com)
  posit = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  arr_player.each { |num_p| posit[num_p - 1] = 'x' }
  arr_com.each { |num_com| posit[num_com - 1] = 'o' }
  puts " #{posit[0]} \| #{posit[1]} \| #{posit[2]}
---|---|---
 #{posit[3]} \| #{posit[4]} \| #{posit[5]}
---|---|---
 #{posit[6]} \| #{posit[7]} \| #{posit[8]} "
end

def check_winner(moves, win_positions)
  winner_check = win_positions.select do |positions|
    (positions - moves).empty?
  end
  !winner_check.empty?
end

puts "Welcome to TicTacToe"
puts "Press enter to begin!"
gets

winning_positions = [
  [1, 2, 3],
  [1, 4, 7],
  [1, 5, 9],
  [2, 5, 8],
  [3, 5, 7],
  [3, 6, 9],
  [4, 5, 6],
  [7, 8, 9]
]

loop do
  player_moves = []
  com_moves = []
  possible_moves = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  loop do
    display_board(player_moves, com_moves)
    loop do
      puts "\nChoose a move"
      temp_player_move = gets.chomp.to_i
      if possible_moves.include?(temp_player_move)
        player_moves << temp_player_move
        possible_moves.delete(temp_player_move)
        break
      else
        puts "\nInvalid move!"
      end
    end
    if check_winner(player_moves, winning_positions)
      puts " \nYou've won!"
      display_board(player_moves, com_moves)
      break
    elsif possible_moves.empty?
      puts "\nDraw..."
      display_board
      break
    end
    temp_com_move = possible_moves.sample
    possible_moves.delete(temp_com_move)
    com_moves << temp_com_move
    if check_winner(com_moves, winning_positions)
      puts "\nYou've Lost, Computer wins!"
      display_board(player_moves, com_moves)
      break
    end
  end
  puts "\nPlay again?(y/n)"
  replay = gets.chomp.downcase
  break if replay[0] == 'n'
end

puts "\n\nThank you for playing!"
