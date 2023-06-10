# class that creates a board, records moves, checks if moves are valid, returns lines for score checking
#   and displays board
class TheBoard
  attr_accessor :board_ary, :temp_board, :board_moves

  DEFAULT_VALUE = 'N'.freeze
  LENGTH = 3
  HEIGHT = 3
  def initialize
    @board_ary = Array.new(LENGTH) { Array.new(HEIGHT, DEFAULT_VALUE) }
    @board_moves = Hash.new
  end

  def populate_moves_hash
    fill_it = ->(j, i, count) { board_moves[count.to_s.to_sym] = [j, i] }
    loop_the_board(fill_it)
  end

  def show_board(board_to_show = board_ary)
    board_to_show.each do |a_row|
      puts a_row.join(' ')
    end
  end

  def add_move(a_number, player)
    x_ord = board_moves[a_number.to_s.to_sym][0]
    y_ord = board_moves[a_number.to_s.to_sym][1]
    board_ary[y_ord][x_ord] = player if check_move(x_ord, y_ord)
  end

  def check_move(x_cord, y_cord)
    board_ary[y_cord][x_cord] == DEFAULT_VALUE
  end

  def return_tl_to_br
    "#{show_one_cell(0, 0)} #{show_one_cell(1, 1)} #{show_one_cell(2, 2)}"
  end

  def return_a_row(row_no)
    "#{show_one_cell(0, row_no)} #{show_one_cell(1, row_no)} #{show_one_cell(2, row_no)}"
  end

  def return_tr_to_bl
    "#{show_one_cell(2, 0)} #{show_one_cell(1, 1)} #{show_one_cell(0, 2)}"
  end

  def show_one_cell(x_cord, y_cord)
    board_ary[y_cord][x_cord].to_s
  end

  def reset_board
    the_reset = ->(j, i, _count) { board_ary[j][i] = DEFAULT_VALUE }
    loop_the_board(the_reset)
  end

  def sample_board
    temp_board = Marshal.load(Marshal.dump(board_ary))
    the_sample = ->(j, i, count) { temp_board[i][j] = count }
    loop_the_board(the_sample)
    show_board(temp_board)
  end

  def remaining_moves
    temp_board = Marshal.load(Marshal.dump(board_ary))
    remaining = ->(j, i, count) { temp_board[i][j] = count if temp_board[i][j] == DEFAULT_VALUE }
    loop_the_board(remaining)
    show_board(temp_board)
  end

  def loop_the_board(thing)
    count = 1
    3.times { |i|
      3.times { |j|
        thing.call(j, i, count)
        count += 1
      }
    }
  end

  def full_line?(other_player, a_line)
    return false if a_line.include? other_player
    return true unless a_line.include? DEFAULT_VALUE
  end
end
