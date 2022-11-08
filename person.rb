class Person
  attr_accessor :id, :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
    puts 'Itnit prton'
  end

  def can_use_services?
    puts 'service'
    @parent_permission || @age >= 18
  end

  private

  def of_age?
    @age >= 18
  end
end

p1 = Person.new(16, 'Benjamin')
puts p1.can_use_services?
