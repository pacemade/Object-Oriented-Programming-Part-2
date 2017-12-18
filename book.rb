class Book

  @@on_shelf = []
  @@on_loan = []

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

  def self.new_book(title, author, isbn)
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
  end

  def self.available
    return @@on_shelf
  end

  def self.borrowed
    return @@on_loan
  end

  def self.browse
    return @@on_shelf.sample
  end



end
