require 'rspec'
require './lib/author'

RSpec.describe Book do
  before(:each) do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end
  it 'exists' do
    expect(@charlotte_bronte).to be_a Author
  end

  it 'has name' do
    expect(@charlotte_bronte.first_name).to eq("Charlotte")
    expect(@charlotte_bronte.last_name).to eq("Bronte")
  end

  it 'has books' do
    expect(@charlotte_bronte.books).to eq([])
  end

  it 'writes book' do
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    require 'pry'; binding.pry
    expect(jane_eyre).to be_a Book
    expect(jane_eyre.title).to eq("Jane Eyre")
    villette = @charlotte_bronte.write("Villette", "1853")
    expect(@charlotte_bronte.books).to eq([jane_eyre, villette])
  end
end