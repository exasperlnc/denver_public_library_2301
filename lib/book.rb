class Book
  attr_reader :author_first_name, :author_last_name, :title, :publication_date, :checked_out, :checked_duration
  def initialize(book_att)
    @author_first_name = book_att[:author_first_name]
    @author_last_name = book_att[:author_last_name]
    @title = book_att [:title]
    @publication_date = book_att[:publication_date]
    @checked_out = false
    @checked_duration = 0
  end

  def check_out(num)
    @checked_out = true
    @checked_duration = num
  end
end