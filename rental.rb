class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date

    @book = book
    book.rentals << self

    @person = person
    person.rentals << self
  end

  def to_hash
    {
      'date' => @date,
      'person' => @person.to_hash,
      'book' => @book.to_hash
    }
  end
end
