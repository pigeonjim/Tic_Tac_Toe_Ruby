require './classes/Main'

main_game = Main.new

main_game.board.populate_moves_hash
main_game.board.add_move(7, AGame::PLAYER_ONE)
main_game.board.add_move(5, AGame::PLAYER_ONE)
main_game.board.add_move(9, AGame::PLAYER_ONE)
puts main_game.game.winner?(AGame::PLAYER_ONE)
main_game.board.show_board
