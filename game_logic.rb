class GameLogic 

    attr_accessor :player_won, :who_won

    def initialize(screen, board, player1, player2)

        @winning_positions = [
            [1, 2, 3],
            [4, 5, 6],
            [7, 8, 9],
            [1, 4, 7],
            [2, 5, 8],
            [3, 6, 9],
            [1, 5, 9],
            [3, 5, 7]
        ]
        @player1 = player1
        @player2 = player2
        @board = board
        @screen = screen

    end

    def logic

        (1..9).each do | number | 

            

            player = @player1
            
            if number.even?
                player = @player2
            end

            @screen.display_board
            puts "Player #{player.player_cast}: Please choose your location"
            
            while true
                input = gets
                if input.match(/[0-9]/)
                    position = input.to_i
                    if @board.tiles[position].match(/[0-9]/)
                        break
                    end
                    puts "Position #{position} was already used"
                end
                @screen.display_board
                puts "Please select a number from 1 through 9"
            end

            @board.tiles[position] = player.player_cast

            check_winning_positions(player.player_cast)

            if player_won
                @screen.display_board
                return @who_won
            end

        end

        return false

    end

    def check_winning_positions(player_cast)

        @winning_positions.each do | set |
            score = 0
            set.each do | position |
                if @board.tiles[position] == player_cast
                    score += 1
                end
            end
            
            if score == 3
                @player_won = true
                @who_won = player_cast
                break
            end
        end

    end

end
