class Player

    def initialize(name)
        @name = name
        @lives = 3
      end
    
    def subtract_life
       @lives -= 1 
    end

    def reset_lives
        @lives = 3
    end
end