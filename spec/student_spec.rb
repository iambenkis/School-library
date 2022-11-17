require_relative '../student'

describe Student do
  context 'When create a new student' do
    it 'return a new object' do
      student = Student.new(1, 12, 'Bob', false)
      expect(student).to be_an_instance_of(Student)
    end
    it 'return the correct name and age' do
      student = Student.new(1, 12, 'Bob', false)
      expect(student.name).to eql('Bob')
      expect(student.age).to eql(12)
    end
  end
end
