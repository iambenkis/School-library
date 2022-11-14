require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
require_relative 'student'
require_relative 'classroom'
require_relative 'person'
require_relative 'methods'

class App
  def initialize
    @section = 0
    @people = []
    # File.read('./people.json')
    @books = load_books
    # JSON.parse(File.read('./books.json'), array_class)
    puts @books
    @rentals = []
  end

  puts "Welcome to the school library \t"

  def option
    while @section != 7
      puts "\nPlease choose an action by entering a number"
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rental of a given person id'
      puts '7 - Exit'
      @section = gets.chomp.to_i
      if @section.between?(1, 7)
        @section
      else
        puts 'Ivalid Choice of app section, Do you want to choose again [y/n]?'
        gets.chomp == 'y' ? option : 1
      end
      start
    end
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def start
    case @section
    when 1
      list_all_books
    when 2
      list_all_people
    when 3
      create_person
    when 4
      create_books
    when 5
      create_rentals
    when 6
      list_rental_by_id
    when 7
      save_data
      puts 'Thank you of using this app!'
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity
end
