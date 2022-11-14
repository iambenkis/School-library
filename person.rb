require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  attr_accessor :id, :name, :age
  attr_reader :rentals

  def initialize(age, parent_permission, name = 'Unknown')
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
    @rentals = []
    super()
  end

  def correct_name
    @name
  end

  def can_use_services?
    puts 'service'
    @parent_permission || @age >= 18
  end

  def add_rental(date, book)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age >= 18
  end
end
