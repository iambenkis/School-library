require './book'
require './person'
require './rental'
require 'json'

class Data_loader
  def load_books
    if File.exist?('./books.json')
      JSON.parse(File.read('./books.json')).map do |book|
        Book.new(book['title'], book['author'])
      end
    else
      []
    end
end

def load_people
    if File.exist?('./people.json')
      JSON.parse(File.read('./people.json')).map do |person|
        Person.new(person['name'], person['age'])
      end
    else
      []
    end
end

def load_rentals
end
end