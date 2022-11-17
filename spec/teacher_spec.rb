require_relative '../teacher'

describe Teacher do
  context 'When create a new Teacher' do
    it 'return a new object' do
      teacher = Teacher.new(1, 42, 'James', 'Math')
      expect(teacher).to be_an_instance_of(Teacher)
    end
    it 'return the correct name and age and specialization' do
      teacher = Teacher.new(1, 42, 'James', 'Math')
      expect(teacher.name).to eql('James')
      expect(teacher.age).to eql(42)
      expect(teacher.specialization).to eql('Math')
      expect(teacher.parent_permission).to eql(true)
    end
  end
end
