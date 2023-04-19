class TheBoard
  # class that creates a board, records moves, checks moves and displays board
  attr_accessor :length, :height, :board_ary

  def initialize
    @length = 3
    @height = 3
    @board_ary = Array.new(length) {Array.new(height,0)}
  end

  def show_board
    board_ary.each do |a_row|
      puts a_row.join(' ')
    end
  end

  def add_move(x_cord, y_cord, player)
    if check_move(x_cord, y_cord)
      board_ary[y_cord][x_cord] = player
    end
  end

  def check_move(x_cord, y_cord)
    board_ary[y_cord][x_cord].zero?
  end
end
