class Author
  attr_reader :author_info,
              :books

  def initialize(author_hash)
    @author_info = author_hash
    @books = []
  end

  def name
    "#{author_info[:first_name]} #{author_info[:last_name]}"
  end

  def write(title, publication_date)
    new_book = Book.new({author_first_name: "#{author_info[:first_name]}", author_last_name: "#{author_info[:last_name]}", title: title, publication_date: publication_date})
    @books << new_book
    new_book
 end
end
