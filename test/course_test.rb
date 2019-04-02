require 'minitest/autorun'
require 'minitest/pride'
require './lib/course'
require './lib/student'

class CourseTest < Minitest::Test
  def test_instance
    course = Course.new("Calculus", 2)
    assert_instance_of Course, course
  end
  def test_name
    course = Course.new("Calculus", 2)
    assert_equal "Calculus", course.name
  end
  def test_capacity
    course = Course.new("Calculus", 2)
    assert_equal 2, course.capacity
  end
  def test_if_it_has_student
    course = Course.new("Calculus", 2)
    assert_equal [], course.students
  end
  def test_if_full
    course = Course.new("Calculus", 2)
    assert_equal false, course.full?
  end
  def test_case_name
    course = Course.new("Calculus", 2)
    morgan = Student.new({name: "Morgan", age: 21})
    jordan = Student.new({name: "Jordan", age: 29})
    course.enroll(morgan)
    course.enroll(jordan)
    assert_equal [morgan,jordan], course.students
    assert_equal true, course.full?
  end
end
