class Author
  attr_reader :author_info

  def initialize(author_hash)
    @author_info = author_hash
  end

  def name
    "#{author_info[:first_name]} #{author_info[:last_name]}"
  end
end
