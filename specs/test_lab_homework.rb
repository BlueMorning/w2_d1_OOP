require('minitest/autorun')
require_relative('../lab_homework.rb')

class TestStudent < Minitest::Test


  def setup
      @student_eric = Student.new("Eric", 18)
  end


  def test_student_name
    # @student_eric
    assert_equal("Eric", @student_eric.student_name)
  end

  def test_cohort_number
    assert_equal(18, @student_eric.cohort_number)
  end

  def test_set_student_name
    @student_eric.set_student_name("Robert")
    assert_equal("Robert", @student_eric.student_name)
  end

  def test_set_cohort_number
    @student_eric.set_cohort_number(19)
    assert_equal(19, @student_eric.cohort_number)
  end

  def test_student_can_talk
    assert_equal("I can talk!", @student_eric.talk)
  end

  def test_say_favourite_language
    assert_equal("I love Ruby!", @student_eric.say_favourite_language("Ruby"))
  end

end
