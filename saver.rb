require_relative 'book'
require_relative 'person'


def save_books()
    book_arr = []
    @books.each_with_index { |book,i| book_arr.push({title: book.title, author: book.author}) }
    File.write('./books.json', book_arr.to_json) if @books.any?
end
def save_people()
    people_arr = []
    @people.each_with_index do |person,i|
        is_teacher = defined?(person.specialization)
        is_teacher ? people_arr.push({id: person.id, age: person.age, specialization: person.specialization, name: person.name}) : people_arr.push({id: person.id, age: person.age, name: person.name, parent_permission: person.parent_permission})
    end
    File.write('./people.json', people_arr.to_json) if @people.any?
end
def save_rentals()
    rentals_arr = []
    puts "rentals: #{@rentals}"
    @rentals.each_with_index { |rental,i|
        if is_teacher = defined?(person.specialization)
            rentals_arr.push({date: rental.date, book: {title: rental.book.title, author: rental.book.author}, person: {name: rental.person.name, id: rental.person.id, age: rental.person.age,specialization: rental.person.specialization, parent_permission: true}})
        else
            rentals_arr.push({date: rental.date, book: {title: rental.book.title, author: rental.book.author}, person: {name: rental.person.name, id: rental.person.id, age: rental.person.age, parent_permission: rental.person.parent_permission}})
        end
    }
    File.write('./rentals.json', rentals_arr.to_json) if @rentals.any?
end
