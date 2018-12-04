#require modules
require './player'
require './game'
require './question'

#create players
players = [Player.new('Player1'), Player.new('Player2')]
#create the game
game = Game.new(players)

#game loop
while game.game_on
    puts "----- NEW TURN -----"
    #announce the turn
    #create a question
    question = Question.new
    puts "#{game.current_player.name}: #{question.test[0]}"
    answer = gets.chomp.to_i
    correct = question.check(answer)
    if !correct
        puts "SRSLY? No!"
        game.current_player.lives -= 1
        #check if game over?
        if game.current_player.lives == 0
            game.game_on = false
            puts "WRONG AGAIN, you lose #{game.current_player.name}."
            puts "----- GAME OVER -----"
        end
    else
        puts "Yesssssssss obvs."
    end
    #ouput scores
    puts "#{game.current_player.name}: #{game.current_player.lives}/3 lives" if game.game_on
    #switch players
    if game.current_player == players[0]
        game.current_player = players[1]
    else 
        game.current_player = players[0]
    end
end
#win output


