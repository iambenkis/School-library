require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
require_relative 'student'
require_relative 'classroom'
require_relative 'person'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def list_all_books
    @books.each_with_index { |book, i| puts "#{i}) Title: \"#{book.title}\", Author: \"#{book.author}\"" }
  end

  def list_all_people
    @people.each do |person|
      is_teacher = defined?(person.specialization)
      print "[#{is_teacher ? 'TEACHER' : 'STUDENT'}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}\n"
    end
  end

  def list_rental_by_id
    print 'Id of person: '
    id = gets.chomp.to_i
    @rentals.each do |rental|
      print "Date: #{rental.date}, Book #{rental.book.title} by #{rental.book.author}\n" if rental.person.id == id
    end
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    trade = gets.chomp.to_i

    case trade
    when 1
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      print 'Has parent permission? [Y/N] '
      parent_permission = gets.chomp.downcase == 'y'
      @people.push(Student.new(age, parent_permission, name))
      puts 'Person created successfully'
    when 2
      print 'Age: '
      age = gets.chomp
      print 'Name: '
      name = gets.chomp
      print 'Specialization: '
      specialization = gets.chomp
      @people.push(Teacher.new(age, specialization, name))
      puts 'Person created successfully'
    else
      puts 'Invalid choice'
    end
  end

  def create_books
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book_obj = Book.new(title, author)
    @books.push(book_obj)
    puts 'Book created successfully'
  end

  def create_rentals
    puts 'Select a book from the following list by number'
    list_all_books
    book_id = gets.chomp.to_i
    book = @books[book_id]
    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, i|
      is_teacher = defined?(person.specialization)
      print "#{i}) [#{is_teacher ? 'TEACHER' : 'STUDENT'}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}\n"
    end
    person_id = gets.chomp.to_i
    person = @people[person_id]
    print 'Date: '
    date = gets.chomp
    rental = Rental.new(date, book, person)
    @rentals.push(rental)
    puts 'Rental created successfully'
  end
end
