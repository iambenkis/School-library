class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented methods '#{__method__}'"
  end
end

class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    return @nameable.correct_name.slice(0, 9) if @nameable.correct_name.length > 10

    @nameable.correct_name
  end
end

class Person < Nameable
  attr_accessor :id, :name, :age
  attr_reader :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
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

  def add_rental (rental)
    @rentals.push(rental)
    rental.person = self
  end

  private

  def of_age?
    @age >= 18
  end
end
