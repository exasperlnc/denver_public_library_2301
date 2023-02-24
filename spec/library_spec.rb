require 'rspec'
require './lib/library'

RSpec.describe Library do
  before(:each) do
    @library = Library.new({:name => "Provo Public Library"})
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee", })
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")
    @to_kill_a_mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
  end

  it 'exists' do
    expect(@library).to be_a Library
  end

  it 'has attributes' do
  expect(@library.name).to eq("Provo Public Library")
  expect(@library.authors).to eq ([])
  expect(@library.books).to eq ([])
  end

  it 'adds authors' do
    @library.add_author(@harper_lee)
    @library.add_author(@charlotte_bronte)
    expect(@library.authors).to eq([@harper_lee, @charlotte_bronte])
    expect(@library.books).to eq([@to_kill_a_mockingbird, @jane_eyre])
  end
end
