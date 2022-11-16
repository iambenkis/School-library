require './book'
require './person'

def save_books()
  book_arr = []
  @books.each_with_index { |book, _i| book_arr.push({ title: book.title, author: book.author }) }
  File.write('./books.json', book_arr.to_json) if @books.any?
end

def save_people()
  people_arr = []
  @people.each_with_index do |person, _i|
    if defined?(person.specialization)
      people_arr.push({ id: person.id, age: person.age, specialization: person.specialization,
                        name: person.name })
    else
      people_arr.push({ id: person.id, age: person.age, name: person.name,
                        parent_permission: person.parent_permission })
    end
  end
  File.write('./people.json', people_arr.to_json) if @people.any?
end

def save_rentals()
  rentals_arr = []
  @rentals.each_with_index do |rental, _i|
    if defined?(person.specialization)
      rentals_arr.push({ date: rental.date, book: { title: rental.book.title, author: rental.book.author },
                         person: { name: rental.person.name, id: rental.person.id, age: rental.person.age,
                                   specialization: rental.person.specialization, parent_permission: true } })
    else
      rentals_arr.push({ date: rental.date,
                         book: { title: rental.book.title,
                                 author: rental.book.author },
                         person: { name: rental.person.name,
                                   id: rental.person.id, age: rental.person.age,
                                   parent_permission: rental.person.parent_permission } })
    end
  end
  File.write('./rentals.json', rentals_arr.to_json) if @rentals.any?
end
