require_relative "Person.rb"

class Student < Person
    def initialize (id, name = "Unknown", age, classroom, parent_permission: true)
        @name = name
        @age = age
        @parent_permission = parent_permission
        @id = id
        @@_id += 1
        @classroom = classroom
    end
    def play_hooky
        return "¯\(ツ)/¯"
    end
end