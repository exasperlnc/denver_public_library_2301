class Book
  attr_reader :author_first_name, :author_last_name, :title, :publication_date
  def initialize(book_att)
    @author_first_name = book_att[:author_first_name]
    @author_last_name = book_att[:author_last_name]
    @title = book_att [:title]
    @publication_date = book_att[:publication_date]
  end
end