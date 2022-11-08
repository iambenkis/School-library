class Person
  attr_accessor :id, :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
  end

  def of_age?
    return true if @age >= 18

    false
  end

  def can_use_services?
    return true if @parent_permission == true || @age >= 18

    false
  end
end

# p1 = Person.new(23,'Benjamin')
# puts p1.name
