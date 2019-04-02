class Course
  attr_reader :name, :capacity, :students
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end
  
  def full?
    if @students.count < @capacity
      false
    else
      true
    end
  end

  def enroll(name)
    @students << name
  end
end
