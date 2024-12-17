require_relative('lib/board')
require_relative('lib/player')

board = Board.new

puts "Let's play Tic-Tac-Toe!"

board.start
board.print_board
