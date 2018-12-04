class Game
    
    attr_accessor :current_player, :game_on 

    def initialize(players)
        @players = players
        @current_player = @players[0]
        @game_on = true
    end

end