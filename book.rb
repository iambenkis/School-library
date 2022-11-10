class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental_book(date, person)
    # @rentals.push(rental)
    # rental.book = self
    Rental.new(date, person, self)
  end
end
