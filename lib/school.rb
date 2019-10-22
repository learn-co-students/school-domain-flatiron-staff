# code here!
class School
  attr_reader :roster
  
  def initialize(name)
    @name = name
    @roster = Hash.new { |h, k| h[k] = [] }
  end

  def add_student(name, grade)
    @roster[grade] << name
  end

  def grade(year)
    @roster[year]
  end

  def sort
    @roster.each do |grade, student_list|
      student_list.sort!
    end
  end
end
