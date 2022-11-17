require_relative '../capitalize'
describe Capitalize do
  context 'when create a new capitalize' do
    it 'return a new object' do
      capitalize = Capitalize.new
      expect(capitalize).to be_an_instance_of(Capitalize)
    end
    it 'return the correct name' do
      capitalize = Capitalize.new
      expect(capitalize.correct_name('robotrobot')).to eql('Robotrobot')
    end
  end
end
