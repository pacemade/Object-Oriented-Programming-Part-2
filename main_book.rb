require "./book.rb"

new1 = Book.new_book("yes", "no", 123)
new2 = Book.new_book("no", "yes", 321)

p new1
p new2
p Book.available

p Book.browse
