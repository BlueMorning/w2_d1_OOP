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

end
