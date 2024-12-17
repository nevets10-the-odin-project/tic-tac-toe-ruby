require_relative('lib/board')
require_relative('lib/player')

board = Board.new
player1 = Player.new('X')
player2 = Player.new('O')

puts "What is player 1's name?"
player1.name = gets.chomp

puts "What is player 2's name?"
player2.name = gets.chomp

puts "Okay, #{player1.name} and #{player2.name}, let's play Tic-Tac-Toe!"

board.start
board.print_board
