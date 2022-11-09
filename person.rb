class Nameable
  def correct_name
    raise NotImplementedError,"#{self.class} has not implemented methods '#{__method__}'"
  end
end


class Decorator < Nameable
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    return @nameable
  end
end

class CapitalizeDecorator < Decorator
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    return @nameable.correct_name().capitalize()
  end
end

class TrimmerDecorator < Decorator
  def initialize(nameable)
    @nameable = nameable
  end
  def correct_name
    if @nameable.correct_name().length > 10
      return @nameable.correct_name().slice(0, 10)
   else
    return @nameable.correct_name()
   end
  end
end

class Person < Nameable
  attr_accessor :id, :name, :age
  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
  end

  def correct_name
    name
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

person = Person.new(16, 'benjamin')
puts person.correct_name #Display the name
capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name # Capitalize the name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name # Capitalize and Trim the name if its length is greater than 10