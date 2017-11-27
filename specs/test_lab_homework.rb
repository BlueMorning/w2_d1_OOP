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

end
