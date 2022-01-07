class Question
    attr_accessor :answer
    attr_accessor :equation

    def initialize
        @first_number = rand(1..20)
        @second_number = rand(1..20)
        @answer = @first_number + @second_number
        
        @equation = "#{@first_number} plus #{@second_number}"
    end 

end