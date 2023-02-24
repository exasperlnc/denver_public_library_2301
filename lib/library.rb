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
    #takes author as argument
    #returns hash with two key value pairs
    #:start, which is the publication year of the first book
    #:end, which points to publication year of last book
  end
end