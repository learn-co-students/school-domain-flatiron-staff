# code here!
class School
  attr_accessor :name, :roster
  
  
  def initialize(school)
    @name = school
    @roster = {}
  end
  

   def add_student(student_name, grade)
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
      @roster[grade] << student_name
    end
    
  def grade(grade)
    return @roster[grade]
  end
  
  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end
end