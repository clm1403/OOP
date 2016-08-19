class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade 
    @grade
  end

end

joe = Student.new("Joe", 99)
cameron = Student.new("Cameron", 91)
joe.better_grade_than?(cameron)

puts "Well done!" if joe.better_grade_than?(cameron)