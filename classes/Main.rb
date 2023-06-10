class Main
  require './classes/TheBoard'
  require './classes/AGame'

  attr_accessor :board, :game, :game_over, :player_input

  def initialize
    @board = TheBoard.new
    @game = AGame.new(board)
    @game_over = false
    @player_input
  end

  def text_input
    case player_input.downcase
    when 'help'
      game.help
      false
    when exit
      puts 'Good Bye'
      true
    end
  end

  def number_input
    if player_input == (0..9)
      board.add_move
    else
      puts "#{player_input} is not a valid move"
      false
    end
  end

  def play_game
    board.populate_moves_hash
    player_input = game.start_game
    while game_over == false
      case player_input
      when --> { player_input.class.instance_of?(String) }
        game_over = text_input
      when --> { player_input.class.instance_of?(Integer) }
        game_over = number_input
      end
    end
  end
end