require_relative "board"
require_relative "player"
require_relative "screen"
require_relative "game_logic"

player1 = Player.new
player2 = Player.new
board = Board.new
screen = Screen.new(board, player1, player2)
tictactoe = GameLogic.new(screen, board, player1, player2)

who_won = tictactoe.logic

Screen.display_who_won(who_won)