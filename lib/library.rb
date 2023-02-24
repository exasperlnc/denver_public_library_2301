require './lib/author'
class Library
  attr_reader :name, :authors, :books
  def initialize(library_att)
    @name = library_att[:name]
    @authors = library_att[:authors]
    @authors = []
    @books = library_att[:books]
    @books = []
    
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
end