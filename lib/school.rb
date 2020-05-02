# code here!
require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade_level)
    if @roster.has_key?(grade_level) == false
      @roster[grade_level] = []
    end
    @roster[grade_level] << "#{student}"
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.collect do |grade_level, student_arary|
      @roster[grade_level].sort! do |a, b|
        a <=> b
      end
    end
    @roster
  end

end
