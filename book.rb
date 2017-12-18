class Book

  @@on_shelf = []
  @@on_loan = []
  @@due_date = Time.now + 3600

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @lent_out = false
  end

  def self.new_book(title, author, isbn)
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    return new_book
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

  def lent_out?
      lent = false
      @@on_loan.each do |status|
        if status == self
          lent = true
        end
      end
    return lent
  end

  def self.current_due_date
    due_date = Time.now
    return due_date
  end

  def borrow
    temp = 0
    if lent_out?
      "This has already been taken out!"
    else
      @due_date = @@due_date
      @@on_shelf.each do |book|
        if book == self
        temp = @@on_shelf.delete(book)
        end
      end
        @@on_loan << temp
    end
  end

  def return_to_library
    back = 0
    if lent_out? == false
     "How can you return that which is not borrowed"
    else
      @@on_loan.each do |book|
        if book == self
          back = @@on_loan.delete(book)
        end
      end
      @@on_shelf << back
      @due_date = nil
      return true
    end
  end

  def due_date
    return @due_date
  end

  def self.overdue
    @@on_loan.each do |book|
      if book.due_date > Time.now
        return true
      else
        return "No Books overdue"
      end
    end
  end

end
