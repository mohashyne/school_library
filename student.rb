class Student < Person
  def initialize(classroomm = 'no classroom', name: 'Unknown', age: nil, parent_permission: true)
    super(name: name, age: age, parent_permission: parent_permission)
    @classroomm = classroomm
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
