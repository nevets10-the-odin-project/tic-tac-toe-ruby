require_relative('lib/board')
require_relative('lib/player')

board = Board.new
players = [Player.new('X'), Player.new('O')]

puts "What is player 1's name?"
players[0].name = gets.chomp

puts "What is player 2's name?"
players[1].name = gets.chomp

puts "Okay, #{players[0].name} and #{players[1].name}, let's play Tic-Tac-Toe!"

board.start

until board.is_game_end
  board.change_player
  current_player = players[board.current_player_index]
  board.print_board
  puts "#{current_player.name}'s turn"
  turn_choice = gets.chomp.to_i
  board.update_board(turn_choice, current_player.token)
  board.game_end?(current_player.token)
end

if board.tie?
  puts "It's a tie!"
else
  puts "#{current_player.name} is the winner!"
end
