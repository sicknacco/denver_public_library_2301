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
end
