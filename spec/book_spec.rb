require 'rspec'
require './lib/book'

RSpec.describe Book do
  before(:each) do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end
  it 'exists' do
    expect(@book).to be_a Book
  end

  it 'has author names' do
    expect(@book.author_first_name).to eq("Harper")
    expect(@book.author_last_name).to eq("Lee")
  end

  it 'has title' do
    expect(@book.title).to eq("To Kill a Mockingbird")
  end

  it 'has publication date' do
    expect(@book.publication_date).to eq("July 11, 1960")
  end

  it 'is not checked out' do
    expect(@book.checked_out).to eq(false)
    expect(@book.checked_duration).to eq(0)
  end

end