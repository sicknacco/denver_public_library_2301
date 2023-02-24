require 'rspec'
require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
  before(:each) do
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")
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

  it 'can see author publication time frame' do
    @dpl.add_author(@charlotte_bronte)

    expect(@dpl.publication_time_frame_for(@charlotte_bronte)).to eq({:start=>"1847", :end=>"1853"})
  end
end