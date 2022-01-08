class Game

    attr_accessor :game_ends 
    attr_accessor :game_ended 
    attr_accessor :call_question

    def initialize
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @current_player = @player1
        @game_ended = false
    end

    def game_ends
        # check current player lives for game ending
        if @current_player.lives == 0
            @game_ended = true
            return true
        else
            return false
        end
    end

    def call_question
        puts "-- NEW TURN --"
        @question = Question.new
        puts "#{@current_player.name}: what does #{@question.equation} equal?"
        @current_answer = gets.chomp

        #check answer against question answer
        if @current_answer.to_i == @question.answer
            puts "#{@current_player.name}: Yes, you are correct!"
        else
            #subtract life
            puts "#{@current_player.name}: Seriously, no!"
            @current_player.subtract_life
        end

        #displays score for each round
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

        #check if game has ended
        if game_ends
            if @current_player == @player1
                puts "Player 2 wins with a score of #{@player2.lives}/3!"
            else
                puts "Player 1 wins with a score of #{@player1.lives}/3!"
            end
            
            puts "-- GAME OVER --"
            puts "Goodbye!"
            return
        end

        #switch current player
        if @current_player == @player1
            @current_player = @player2
        else 
            @current_player = @player1
        end

    end

end