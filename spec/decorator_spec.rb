require_relative '../decorator'

describe Decorator do
  context 'when create a new decorator' do
    it 'return a new object' do
      decorator = Decorator.new('Bob')
      expect(decorator).to be_an_instance_of(Decorator)
    end
    it 'raise an error when given the wrong name' do
      decorator = Decorator.new(' ')
      expect { decorator.name }.to raise_error(NoMethodError)
    end
  end
end
