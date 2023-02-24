require './lib/book'
class Author
  attr_reader :first_name, :last_name, :books
  def initialize(author_att)
    @first_name = author_att[:first_name]
    @last_name = author_att[:last_name]
    @books = author_att[:books]
    @books = []
  end

  def write(title, publication_date)
    new_book = Book.new(
      :author_first_name => self.first_name,
      :author_last_name => self.last_name,
      :title => title,
      :publication_date => publication_date
    )
    @books << new_book
  end
end

