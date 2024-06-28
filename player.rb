class Player

    X_SYMBOL = "X"
    O_SYMBOL = "O"

    @@number_of_players = 0

    attr_reader :player_cast

    def initialize()
        @@number_of_players += 1

        if @@number_of_players == 1
            @player_cast = X_SYMBOL
        elsif @@number_of_players == 2
            @player_cast = O_SYMBOL
        else
            puts "Too many players. You can only have two"
        end
    end

    def self.get_number_of_players

        puts "We have #{@@number_of_players} players"

    end

end