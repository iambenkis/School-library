require_relative "Person.rb"

class Teacher < Person
    attr_reader :specialization
    def initialize (name = "Unknown", age, specialization, parent_permission: true)
        @name = name
        @age = age
        @parent_permission = parent_permission
        @id = Random.rand(1..1000)
        @specialization = specialization
    end
    def can_use_services?
        return true
    end
end

t1 = Teacher.new("Vincent", 42, "Geo")
puts t1.specialization