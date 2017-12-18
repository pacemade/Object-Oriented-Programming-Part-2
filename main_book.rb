require "./book.rb"

new1 = Book.new_book("Nintendo Power", "Pierre", 2001)
new2 = Book.new_book("Huehuehue", "Bob Loblaw", 321)


p Book.browse
p Book.available
p new1.borrow
p Book.borrowed
p Book.available

p new1.lent_out?
p new2.return_to_library
p new1.return_to_library

p Book.borrowed
p Book.available

p new1.borrow
p new2.borrow

p Book.borrowed

p Book.overdue
