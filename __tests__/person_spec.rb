require_relative '../person'
require_relative '../student'


describe Person do
  context 'when create a new person' do
    it 'return a new object' do
      person = Person.new(120, 20, name: 'Age')
      expect(person).to be_an_instance_of(Person)
    end
    it 'return the correct id, name and age' do
      person = Person.new(120, 20, name: 'Age')
      expect(person.id).to eql(120)
      expect(person.name).to eql('Age')
      expect(person.age).to eql(20)
    end
  end
  context 'when create a new person with no name' do
    it 'return a new object' do
      person = Person.new('', 20)
      expect(person).to be_an_instance_of(Person)
    end
    it 'return the correct name and age' do
      person = Person.new('', 20)
      expect(person.name).to eql('Unknown')
      expect(person.age).to eql(20)
    end
  end
end
