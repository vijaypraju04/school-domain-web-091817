require "pry"

class School
  attr_accessor :roster, :name

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted = {}
    roster.each do |grades, students|
      sorted[grades] = students.sort
    end
    sorted
  end
end
