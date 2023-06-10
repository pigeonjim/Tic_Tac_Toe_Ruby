class AGame
  attr_accessor :the_board, :current_player

  PLAYER_ONE = 'X'
  PLAYER_TWO = 'Ø'
  MAX_NUMBER_OF_MOVES = 9

  def initialize (a_board)
    @the_board = a_board
    @current_player = PLAYER_ONE
  end

  def start_game
    puts "\nPlayer 1 is #{PLAYER_ONE} and Player 2 is #{PLAYER_TWO}"
    the_board.sample_board
    puts "\n#{current_player} please choose a number to make a move."
    puts 'Type help for more information.)'
    puts "Type end to quit.\n"
    gets
  end

  def help
    puts 'select a number from 1 to 9 to make a move'
    puts "\nPlayer 1 is #{PLAYER_ONE} and Player 2 is #{PLAYER_TWO}"
    puts 'available numbers left'
    the_board.remaining_moves
    puts "(Enter 'Board' to show the full box of numbers)\n"
    gets
  end

  def make_a_move(cell_no)
    a_board.add_move(cell_no)
  end

  def opposition(the_player)
    the_player == PLAYER_ONE ? PLAYER_TWO : PLAYER_ONE
  end

  def winner?(the_player)
    other_player = opposition(the_player)
    return true if the_board.full_line?(other_player, the_board.return_tl_to_br)
    return true if the_board.full_line?(other_player, the_board.return_tr_to_bl)

    3.times { |i| return true if the_board.full_line?(other_player, the_board.board_ary[i]) }
    3.times { |i| return true if the_board.full_line?(other_player, the_board.return_a_row(i)) }
    return false
  end
end
