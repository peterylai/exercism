class School
  attr_reader :data

  def initialize
    @data = {}
  end

  def students(grade)
    data[grade] || []
  end

  def add(name, grade)
    data[grade] ||= []
    data[grade] << name
    data[grade].sort!
  end

  def students_by_grade
    data
      .map {|k,v| {grade: k, students: v}}
      .sort_by {|gr| gr[:grade]}
  end
end

module BookKeeping
  VERSION = 3
end