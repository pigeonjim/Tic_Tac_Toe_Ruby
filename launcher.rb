require './classes/Main'

main_game = Main.new

main_game.board.populate_moves_hash
puts main_game.game.PLAYER_ONE
main_game.board.add_move(7, main_game.game.PLAYER_ONE)
main_game.board.add_move(8, main_game.game.PLAYER_ONE)
main_game.board.add_move(9, main_game.game.PLAYER_ONE)
puts main_game.game.winner?(main_game.game.PLAYER_ONE)
puts
main_game.board.show_board
