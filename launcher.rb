require './classes/Main'

main_game = Main.new

main_game.board.populate_moves_hash
main_game.board.show_board

