require_relative 'book'
require_relative 'person'

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    # book.rentals << self
    # book.each {
    #   |n| puts "Books rentals: #{n.date} #{n.book.title} #{n.book.rentals}"
    # }
    @person = person
    # person.rentals << self
  end
end
