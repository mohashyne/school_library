class Book
  attr_accessor :title, :author, :rentals, :date, :person

  def initialize(title = 'no title', author = 'no author')
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, person, self)
  end
end
