class Question

    attr_reader :test

    def initialize
        @test = self.createQuestion
    end

    def createQuestion
        int1 = rand(20)
        int2 = rand(20)
        text = "What does #{int1} plus #{int2} equal?"
        answer = int1 + int2
        [text, answer]
    end

    def check(input)   
        input == @test[1]
    end
end