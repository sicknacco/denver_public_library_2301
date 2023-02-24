require 'rspec'
require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
  before(:each) do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  it 'exists' do
    expect(@dpl).to be_an_instance_of(Library)
  end

  it 'has a name' do
    expect(@dpl.name).to eq("Denver Public Library")
  end

  it 'starts with no books' do
    expect(@dpl.books).to eq([])
  end

  it 'starts with no authors' do
    expect(@dpl.authors).to eq([])
  end

  it 'can add authors and books to collection' do
    @dpl.add_author(@charlotte_bronte)

    expect(@dpl.authors).to include(@charlotte_bronte)
    expect(@dpl.books).to include(@jane_eyre)
  end
end