class Student
    attr_reader :name, :age, :scores
    def initialize(data)
        @name = data[:name]
        @age = data[:age]
        @scores = []
    end

    def log_score(score)
        scores.push(score)
    end

    def grade
    total = 0
    scores.each do |score|
        total += score
    end
    total.to_f / scores.length
    end
end
