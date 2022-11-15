require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :name, :age
  attr_reader :classroom

  def initialize(id, age, parent_permission: true, name: 'Unknown')
    super(id, age, parent_permission, name,)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
