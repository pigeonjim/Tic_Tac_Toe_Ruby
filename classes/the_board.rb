# class that creates a board, records moves, checks if moves are valid, returns lines for score checking
#   and displays board
class TheBoard
  attr_reader :length, :height, :default_value
  attr_accessor :board_ary

  def initialize
    @default_value = 'N'
    @length = 3
    @height = 3
    @board_ary = Array.new(length) { Array.new(height, default_value) }
  end

  def show_board
    board_ary.each do |a_row|
      puts a_row.join(' ')
    end
  end

  def add_move(x_cord, y_cord, player)
    board_ary[y_cord][x_cord] = player if check_move(x_cord, y_cord)
  end

  def check_move(x_cord, y_cord)
    board_ary[y_cord][x_cord] == default_value
  end

  def return_a_row(y_cord)
    "#{show_one_cell(0, y_cord)} #{show_one_cell(1, y_cord)} #{show_one_cell(2, y_cord)}"
  end

  def return_a_col(x_cord)
    "#{show_one_cell(x_cord, 0)} #{show_one_cell(x_cord, 1)} #{show_one_cell(x_cord, 2)}"
  end

  def return_tl_to_br
    "#{show_one_cell(0, 0)} #{show_one_cell(1, 1)} #{show_one_cell(2, 2)}"
  end

  def return_tr_to_bl
    "#{show_one_cell(2, 0)} #{show_one_cell(1, 1)} #{show_one_cell(0, 2)}"
  end

  def show_one_cell(x_cord, y_cord)
    board_ary[y_cord][x_cord].to_s
  end

  def reset_board
    3.times {|i|
      3.times {|j|
        board_ary[j][i] = default_value
      }
    }
  end

  def sample_board
    count = 1
    3.times { |i|
      3.times { |j|
        add_move(j, i, count)
        count += 1
      }
    }
    show_board
    reset_board
  end
end
