class Book
  attr_reader :book_info

  def initialize(book_hash)
    @book_info = book_hash
  end

  def title
    @book_info[:title]
  end

  def author
    "#{@book_info[:author_first_name]} #{@book_info[:author_last_name]}"
  end
end
