require 'rspec'
require './lib/book'
require './lib/author'
require './lib/library'

RSpec.describe Library do
  before(:each) do
    @dpl = Library.new("Denver Public Library")
  end

  it 'exists' do
    expect(@dpl).to be_an_instance_of(Library)
  end
end