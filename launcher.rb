require './classes/Main'

main_game = Main.new

main_game.board.populate_moves_hash
main_game.board.add_move(9,'x')
main_game.board.remaining_moves