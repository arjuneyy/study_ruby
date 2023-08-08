class Person
  attr_accessor :name, :profession
  def initialize(name, profession)
    @name, @profession = name, profession
  end

  def info
    p "Name: #@name. Profession: #@profession"
  end
end

person = Person.new("Arjun", "Dev")
person.info