require "./classes/tic_tac_toe.rb"
thing = TheBoard.new
thing.add_move(0, 0, '1')
thing.add_move(1, 0, '2')
thing.add_move(2, 0, '3')
thing.show_board
