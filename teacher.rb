require_relative 'person'

class Teacher < Person
  def initialize(name:, age:, specialization:)
    super(name: name, age: age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
