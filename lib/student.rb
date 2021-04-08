class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(student_info)
    @name = student_info[:name]
    @age = student_info[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    sum_scores = @scores.sum do |score|
      score
    end
    (sum_scores.to_f / @scores.length)
  end

end
