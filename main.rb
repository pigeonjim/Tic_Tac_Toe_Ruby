require './classes/TheBoard'
require './classes/AGame'
board = TheBoard.new
game = AGame.new(board)

def text_input(player_input)
  case player_input.downcase
  when 'help'
    game.help
    false
  when exit
    puts 'Good Bye'
    true
  end
end

def number_input(player_input)
  if player_input == (0..9)
    board.add_move
  else
    puts "#{player_input} is not a valid move"
    false
  end
end

def play_game
  board.populate_co_ords_hash
  player_input = game.start_game
  game_over = false
  while game_over == false
    case player_input
    when --> { player_input.class.instance_of?(String) }
      game_over = text_input(player_input)
    when --> { player_input.class.instance_of?(Integer) }
      game_over = number_input(player_input)
    end
  end
end

play_game
