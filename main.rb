require_relative 'app'

class Main

    def initialize
        @section = 0
        @app = App.new
        puts "Welcome to the school library \t"
    end
    def option
        while @section != 7
            puts "\nPlease choose an action by entering a number"
            puts "1 - List all books"
            puts "2 - List all people"
            puts "3 - Create a person"
            puts "4 - Create a book"
            puts "5 - Create a rental"
            puts "6 - List all rental for a given person id"
            puts "7 - Exit"
            @section = gets.chomp().to_i
            if(@section.between?(1, 7))
                @section
            else
                puts "Ivalid Choice for app section, Do you want to choose again [y/n]?"
                case gets.chomp()
                when 'y'
                    self.option
                when 'n'
                    return
                else
                    return
                end
            end
            start
        end
    end

    def start
        case @section
        when 1
            @app.list_all_books
        when 2
            @app.list_all_people
        when 3
            @app.create_person
        when 4
            @app.create_books
        when 5
            @app.create_rentals
        when 6
            @app.list_rental_by_id
        when 7
            puts "Thank you for using this app!"
        end
    end
end

main = Main.new
main.option