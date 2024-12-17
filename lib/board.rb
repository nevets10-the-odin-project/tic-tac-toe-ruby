# Board Class
class Board
  attr_accessor :spaces, :current_player_index

  WIN_INDEXES = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

  def start
    self.spaces = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    self.current_player_index = 1
  end

  def update_board(choice, player_token)
    spaces.each_with_index do |row, row_index|
      spaces[row_index][row.find_index(choice)] = player_token if row.include?(choice)
    end
  end

  def print_board
    spaces.each do |row|
      puts ''
      puts "#{row[0]} | #{row[1]} | #{row[2]}"
      print '---------' unless row == spaces[2]
      puts '' if row == spaces[2]
    end
  end

  def change_player
    self.current_player_index = current_player_index.zero? ? 1 : 0
  end

  def winner?(token)
    flat_spaces = spaces.flatten
    is_winner = false

    WIN_INDEXES.each do |win_line|
      line_check = [flat_spaces[win_line[0]], flat_spaces[win_line[1]], flat_spaces[win_line[2]]]
      if line_check.all?(token)
        is_winner = true
        break
      end
    end

    is_winner
  end

  def tie?
    flat_spaces = spaces.flatten
    flat_spaces.all? { |space| space.is_a?(String) }
  end
end
