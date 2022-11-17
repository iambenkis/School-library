require_relative '../trimmer'

describe Trimmer do
  context 'when create a new trimmer' do
    it 'return a new object' do
      trimmer = Trimmer.new
      expect(trimmer).to be_an_instance_of(Trimmer)
    end
    it 'return the correct name' do
      trimmer = Trimmer.new
      expect(trimmer.nameable('robotrobotsr')).to eql('robotrobot')
    end
  end
end
