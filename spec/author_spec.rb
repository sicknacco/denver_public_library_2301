require 'rspec'
require './lib/book'
require './lib/author'

RSpec.describe Author do
  before(:each) do
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end
  
  it 'exists' do
    expect(@charlotte_bronte).to be_an_instance_of(Author)
  end
  
  it 'author has a name' do
    expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
  end
  
  it 'starts with no books' do
    expect(@charlotte_bronte.books).to eq([])
  end
  
  it 'can write books' do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")

    expect(@jane_eyre.class).to eq(Book)
    expect(@jane_eyre.title).to eq("Jane Eyre")
  end

  it 'can add books to books array' do
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")

    expect(@charlotte_bronte.books).to include(@jane_eyre, @villette)
  end
end