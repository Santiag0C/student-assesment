require 'minitest/autorun'
require 'minitest/pride'
require './lib/student'


class StudentTest < Minitest::Test
  def test_instance
    morgan = Student.new({name: "Morgan", age: 21})
    assert_instance_of Student, morgan
  end
  def test_name
    morgan = Student.new({name: "Morgan", age: 21})
    assert_equal "Morgan", morgan.name
  end
  def test_age
    morgan = Student.new({name: "Morgan", age: 21})
    assert_equal 21, morgan.age
  end
  def test_score
    morgan = Student.new({name: "Morgan", age: 21})
    assert_equal [], morgan.scores
  end
  def test_it_can_add_score
    morgan = Student.new({name: "Morgan", age: 21})
    morgan.log_score(89)
    morgan.log_score(78)
    assert_equal [89, 78], morgan.scores
  end
  def test_average
    morgan = Student.new({name: "Morgan", age: 21})
    morgan.log_score(89)
    morgan.log_score(78)
    assert_equal 83.5, morgan.grade
  end
end
