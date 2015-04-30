class Book
  def initialize(author, title, genre)
    @author = author
    @title = title
    @genre = genre
  end

  def to_s()
    "著者: #{@author}, #{@title}, #{@genre}"
  end
end

ruby3 = Book.new("asdas", "ruby3", "programing")
puts("#{ruby3}")
