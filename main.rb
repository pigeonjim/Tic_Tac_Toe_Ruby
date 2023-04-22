require './classes/TheBoard'
require './classes/AGame'
board = TheBoard.new
game = AGame.new(board)

board.reset_board
board.add_move(1, 2, AGame::PLAYER_ONE)
board.add_move(0, 2, AGame::PLAYER_TWO)
board.add_move(2, 2, AGame::PLAYER_ONE)
puts
board.show_board
puts
board.sample_board
puts
board.show_board
puts
board.remaining_moves
puts
board.reset_board
puts
board.show_board
