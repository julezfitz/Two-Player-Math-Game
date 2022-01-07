require './Question'
require './Player'
require './Game'

def main
    new_game = Game.new
    
    while !new_game.game_ended
        new_game.call_question
    end

end