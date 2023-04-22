class AGame
  attr_accessor :current_move, :the_board

  @current_move
  PLAYER_ONE = 'X'
  PLAYER_TWO = 'Ø'
  MAX_NUMBER_OF_MOVES = 9

  def initialize (a_board)
    @the_board = a_board
    @current_player = PLAYER_ONE
  end

  def start_game
    self.current_move = 1;
    puts "\nPlayer 1 is #{PLAYER_ONE} and Player 2 is #{PLAYER_TWO}"
    the_board.sample_board
    puts "\nPlayer one please choose a number to make a move"
    puts "(or type help for more information)\n"
    answer = gets
  end

  def help
    puts 'select a number from 1 to 9 to make a move'
    puts "\nPlayer 1 is #{PLAYER_ONE} and Player 2 is #{PLAYER_TWO}"
    puts 'available numbers left'
    the_board.remaining_moves
    puts "(Enter 'Board' to show the full box of numbers)\n"
    answer = gets
  end
end
