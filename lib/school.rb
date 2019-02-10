# code here!
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.keys.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each {|keys, values| @roster[keys] = @roster[keys].sort}
    @roster
  end

end
