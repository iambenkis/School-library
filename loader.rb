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
end

def load_rentals
end