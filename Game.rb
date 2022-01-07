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
        if @current_player.lives = 0
            @game_ended = true
            return true
        else
            return false
        end
    end

    def call_question
        puts "-- NEW TURN --"
        question = Question.new
        puts "#{@current_player.name}: what does #{question.equation} equal?"
        current_answer = gets.chomp

        #check answer against question answer
        if current_answer = question.answer
            puts "#{@current_player.name}: Yes, you are correct!"
        else
            #subtract life
            puts "#{@current_player.name}: Seriously, no!"
            @current_player.subtract_life
        end

        #check if game has ended
        if @game_ended
            if @current_player == @player1
                puts "Player 2 wins!"
            else
                puts "Player 1 wins!"
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