require './book'
require './person'
require './rental'
require 'json'


def load_books
    if File.exist?('./books.json') && !File.read('./books.json').empty?
      JSON.parse(File.read('./books.json')).map do |book|
        Book.new(book['title'], book['author'])
      end
    else
      []
    end
  end

def load_people
  if File.exist?('./people.json') && !File.read('./people.json').empty?
    JSON.parse(File.read('./people.json')).map do |person|
      is_teacher = person.has_key?("specialization")
      is_teacher ? Teacher.new(person["id"], person["age"], person["specialization"], person["name"]) : Student.new( person["id"], person["age"], person["name"], person["parent_permission"])
    end
  else
    []
  end
end

def load_rentals
  if File.exist?('./rentals.json') && !File.read('./rentals.json').empty?
    JSON.parse(File.read('./rentals.json')).map do |rental|
      books = @books.find do |book| book.title == rental['book']['title'] && book.author == rental['book']['author']
      end
      person =  @people.find do |person| person.id == rental['person']['id']
      end
      Rental.new(rental['date'], books, person)
    end
  else
    []
  end
end

