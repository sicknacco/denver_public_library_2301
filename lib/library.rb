class Library
  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books.flatten!
  end

  # def publication_time_frame_for(author)
  #   publication_years = author.books.each do |book|
  #     book.publication_year

  #   end
  # end
end
