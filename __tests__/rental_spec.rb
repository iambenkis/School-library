require_relative '../rental'

describe Rental do
    context 'When create a rental' do
        it 'return a new object' do
            person = Person.new(120,20,name:'Benjamin')
            book = Book.new('Title', 'Author')
            date = '12-12-2012'
            rental = Rental.new(date,person,book)
            expect(rental).to be_an_instance_of(Rental)
        end
        it 'return the correct date' do
            person = Person.new(120,20,name:'Benjamin')
            book = Book.new('Title', 'Author')
            date = '22-12-2022'
            rental = Rental.new(date,person,book)
            expect(rental.date).to eql('22-12-2022')
        end
        it 'return the correct date' do
            person = Person.new(120,20,name:'Benjamin')
            book = Book.new('Title', 'Author')
            date = '22-12-2022'
            rental = Rental.new(date,person,book)
            expect(rental.date).to eql('22-12-2022')
        end
    end
end