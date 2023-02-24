class Book
  attr_reader :book_info

  def initialize(book_hash)
    @book_info = book_hash
  end

  def title
    @book_info[:title]
  end
end
