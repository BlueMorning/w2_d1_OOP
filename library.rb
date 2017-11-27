class Library

   TITLE          = :title
   RENTAL_DETAILS = :rental_details
   STUDENT_NAME   = :student_name
   DATE           = :date


   # {title: "lord_of_the_rings",
   # rental_details: {
   #   student_name: "Jeff",
   #   date: "01/12/16"
   #   }
   # }

  attr_reader :books

  def initialize(array_of_books)
    @books = array_of_books
  end

  def get_book_from_title(title)
    return @books.select{|book| book[:title] == title}.first
  end

  def get_rental_details_from_title(title)
    return @books.select{|book| book[:title] == title}.first()[:rental_details]
  end

  def add_new_book(title)
    book = {TITLE => title,
            RENTAL_DETAILS => {
                STUDENT_NAME => "",
                DATE => ""
              }
          }

    @books.push(book)
  end

  def change_rental_details(title, student_name, date)
    rental_details               = get_rental_details_from_title(title)
    rental_details[STUDENT_NAME] = student_name
    rental_details[DATE]         = date
    @books.select{|book| book[TITLE] == title}.first()[RENTAL_DETAILS] = rental_details
  end

end
