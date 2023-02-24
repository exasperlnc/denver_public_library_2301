require './lib/author'
class Library
  attr_reader :name, :authors, :books, :checked_books
  def initialize(library_att)
    @name = library_att[:name]
    @books = library_att[:books]
    @authors = []
    @books = []
    @checked_books = []
    
  end
  
  def add_author(author)
    @authors << author
    @books << author.books
    @authors
  end

  def publication_time_frame_for(author)
    date_array = []
    author.books.each do |book|
      year = book.publication_date.split[-1].to_i
      date_array << year
    end
    auth_hash = {
      :start => date_array.max.to_s,
      :end => date_array.min.to_s
    }
    return auth_hash
  end

  def check_out(book_title, weeks)
      @books.each do |book|
        if book.title.include?(book_title)
           book.check_out(weeks)
           @checked_books << book
        end
      end
  end
end