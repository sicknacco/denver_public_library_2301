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

  xit 'starts with no books' do
    expect(@charlotte_bronte.books).to eq([])
  end
end