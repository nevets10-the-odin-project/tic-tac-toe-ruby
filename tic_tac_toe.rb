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
  board.print_board
  puts "#{players[board.current_player_index].name}'s turn"
  turn_choice = gets.chomp.to_i
  board.update_board(turn_choice, players[board.current_player_index].token)
end
