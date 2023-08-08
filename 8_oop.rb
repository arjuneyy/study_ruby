class Person
  def initialize(name, age)
    @name, @age = name, age
  end
end

class Employee < Person

  def display_info
    puts "Name: #@name. Age: #@age"
  end
end

emp = Employee.new("arjun", 22)
emp.display_info
p emp.is_a? Person