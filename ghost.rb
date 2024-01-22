require './player.rb'

class Game
    def initialize(player_1, player_2)
        @player_1 = Player.new(player_1)
        @player_2 = Player.new(player_2)
        @fragment = ""
        @dictionary = 
        @current_player = @player_1
        @previous_player = @player_2
    end

    def play_round

    end

    def next_player!
        if @current_player == @player_1
            @current_player = @player_2
            @previous_player = @player_1
        else
            @current_player = @player_1
            @previous_player = @player_2
        end
    end

    def take_turn(player)
        current_guess = @current_player.guess
        raise "Invalid guess." if !current_guess.is_a?(String) && current_guess.length != 1
        @fragment += current_guess

    end
end