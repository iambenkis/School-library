class Saver
    def initialize (books, people, rentals)
        @books = books
        @people = people
        @rentals = rentals
    end
    def save_books
        book_arr = []
        @books.each_with_index { |book,i| book_arr.push({title: book.title, author: book.author}) }
        File.write('./books.json', book_arr.to_json) if @books.any?
    end
    def save_people
        people_arr = []
        @people.each_with_index { |person,i| people_arr.push({name: person.name, age: person.age}) }
        File.write('./people.json', people_arr.to_json) if @people.any?
    end
end
    