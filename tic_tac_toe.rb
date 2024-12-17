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
board.print_board
