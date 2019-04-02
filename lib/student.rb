class Student
  attr_reader :name, :age, :scores
  def initialize(info)
    @name = info[:name]
    @age = info[:age]
    @scores = []
  end
  def log_score(score)
    @scores << score
  end
  def grade
    count = 0
    @scores.each do |num|
      count += num
    end
    count.to_f/@scores.count
  end
end
