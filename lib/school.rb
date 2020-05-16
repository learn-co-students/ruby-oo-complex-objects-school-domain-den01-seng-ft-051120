class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    case @roster[grade]
    when nil
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.reduce({}) do |sorted_students, (grade_level, students)|
      sorted_students[grade_level] = students.sort
      sorted_students
    end
  end
end
