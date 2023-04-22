class AGame
    require "./the_board"
    attr_reader :MAX_NUMBER_OF_MOVES, :PLAYER_ONE, :PLAYER_TWO
    attr_accessor :current_move
    @current_move

    def initialize
        @MAX_NUMBER_OF_MOVES = 9
        @PLAYER_ONE = "X"
        @PLAYER_TWO = "O"
        @the_board = TheBoard.new
    end

    def start_game
        self.current_move = 1;
        puts ""
