require ("minitest/autorun")
require_relative ("../library.rb")


class TestLibrary < MiniTest::Test

  def setup

    @books = [
          {title: "lord_of_the_rings",
          rental_details: {
            student_name: "Jeff",
            date: "01/12/16"
            }
          },
          {title: "learn_ruby",
          rental_details: {
            student_name: "Chris",
            date: "14/07/17"
            }
          },
          {title: "change_your_life",
          rental_details: {
            student_name: "God",
            date: "14/02/15"
            }
          }
    ]


    @library =  Library.new(@books)


  end

  def test_new_library
    @library = Library.new(@books)
  end

  def test_list_all_books
    return @library.books
  end

end
