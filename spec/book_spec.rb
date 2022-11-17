require_relative '../book'

describe Book do
  context 'when create a new book' do
    it 'return a new object' do
      book = Book.new('Outliers', 'Malcolm Gladwell')
      expect(book).to be_an_instance_of(Book)
    end
    it 'return the correct title and author' do
      book = Book.new('Outliers', 'Malcolm Gladwell')
      expect(book.title).to eql('Outliers')
      expect(book.author).to eql('Malcolm Gladwell')
    end
  end
end
