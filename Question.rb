class Question
    attr_accessor :answer

    def generate_question
        @first_number = rand(1..20)
        @second_number = rand(1..20)
        @answer = @first_number + @second_number
        
        puts "#{@first_number} plus #{@second_number}"
    end 

end