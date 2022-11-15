class Saver
    def save_books(books)
        book_arr = []
        books.each_with_index { |book,i| book_arr.push({title: book.title, author: book.author}) }
        File.write('./books.json', book_arr.to_json) if books.any?
    end
    def save_people(people)
        people_arr = []
        people.each_with_index do |person,i|
          is_teacher = defined?(person.specialization)
          is_teacher ? people_arr.push({id: person.id, age: person.age, specialization: person.specialization, name: person.name}) : people_arr.push({id: person.id, age: person.age, name: person.name, parent_permission: person.parent_permission})
        end
        File.write('./people.json', people_arr.to_json) if people.any?
    end
    def save_rentals(rentals)
        rentals_arr = []
        rentals.each_with_index { |rental,i| rentals_arr.push({date: rental.date, book: rental.book, person: rental.person}) }
        File.write('./rentals.json', rentals_arr.to_json) if rentals.any?
    end
end
