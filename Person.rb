class Person
    attr_accessor :id, :name, :age
    def initialize (id,name = "Unknown", age, parent_permission: true)
        @name = name
        @age = age
        @parent_permission = parent_permission
        @id = id
    end
    def is_of_age?
        if @age >= 18
            return true
        end
        return false
    end
    def can_use_services?
        if @parent_permission == true or @age >= 18
            return true
        end
        return false
    end
end