# Board Class
class Board
  attr_accessor :spaces

  def start
    self.spaces = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end

  def print_board
    spaces.each do |row|
      puts ''
      puts "#{row[0]} | #{row[1]} | #{row[2]}"
      print '---------' unless row == spaces[2]
      puts '' if row == spaces[2]
    end
  end
end
