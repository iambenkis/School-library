require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :name, :age
  attr_reader :classroom

  def initialize(id, age, name, parent_permission)
    super(id, age, name: name, parent_permission: parent_permission)
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
