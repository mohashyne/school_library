require_relative 'nameable'
require_relative 'Decorator'
require_relative 'Trimmer_Decorator'
require_relative 'Capitalize_Decorator'

class Person < Nameable
  def initialize(name, age, parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
  end

  def correct_name
    @name
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    @parent_permission == true || of_age?
  end

  private

  def of_age?
    @age >= 18
  end
end

person = Person.new('maximilianus', 22)
puts "Person's Correct Name: #{person.correct_name}"
capitalized_person = CapitalizeDecorator.new(person)
puts "Capitalized Person's Correct Name: #{capitalized_person.correct_name}"
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts "Capitalized and Trimmed Person's Correct Name: #{capitalized_trimmed_person.correct_name}"
