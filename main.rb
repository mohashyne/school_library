require_relative 'person'
require_relative 'nameable'
require_relative 'decorator'
require_relative 'trimmer_decorator'
require_relative 'capitalize_decorator'
require_relative 'classroom'
require_relative 'student'
require_relative 'book'
require_relative 'rental'

person = Person.new(22, 'maximilianus')
puts "Person's Correct Name: #{person.correct_name}"
capitalized_person = CapitalizeDecorator.new(person)
puts "Capitalized Person's Correct Name: #{capitalized_person.correct_name}"
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts "Capitalized and Trimmed Person's Correct Name: #{capitalized_trimmed_person.correct_name}"
classroom = Classroom.new('Math Class')
# Create students
student1 = Student.new(classroom, 18, 'Alice')
student2 = Student.new(classroom, 22, 'das')
student3 = Student.new(classroom, 33, 'acs')
puts "Classroom Label: #{classroom.label}"
puts "Classroom Students: #{classroom.students.map(&:name).join(', ')}"
puts "Student1 Classroom: #{student1.classroom&.label}"
puts "Student2 Classroom: #{student2.classroom&.label}"
puts "Student3 Classroom: #{student3.classroom&.label}"
book1 = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
person1 = Person.new(22, 'Maximilianus')
rental1 = Rental.new('2023-08-03', book1, person1)
puts rental1.person
# Add the rental to the book's rentals and person's rentals
book1.add_rental(rental1, person1)
person1.add_rental(rental1, book1)
puts "Rentals for #{book1.title}:"
book1.rentals.each do |rental|
  puts "#{rental.date}, Rented by: #{rental.person.name}"
end
puts "Rentals for #{person1.name}:"
person1.rentals.each do |rental|
  puts "#{rental.date}, Book: #{rental.book.title}"
end
