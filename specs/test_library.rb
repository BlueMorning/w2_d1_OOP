require ("minitest/autorun")
require_relative ("../library.rb")


class TestLibrary < MiniTest::Test

  def setup

    @title = "think_black_box"

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

  def test_get_book_from_title
    info_book = @library.get_book_from_title("change_your_life")
    assert_equal(@books[2], info_book)
  end

  def test_get_rental_details_from_title
    info_book = @library.get_rental_details_from_title("change_your_life")
    assert_equal(@books[2][:rental_details], info_book)
  end

  def test_add_new_book
    @library.add_new_book(@title)
    assert_equal(4, @library.books.length)
  end

  def test_change_rental_details
    @library.change_rental_details("learn_ruby", "Hulk", "28/11/2017")
    assert_equal("Hulk",       @library.get_rental_details_from_title("learn_ruby")[:student_name])
    assert_equal("28/11/2017", @library.get_rental_details_from_title("learn_ruby")[:date])
  end

end
