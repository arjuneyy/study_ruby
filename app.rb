# frozen_string_literal: true

# name = "ARjun"

# puts "Hello world #{name}"

# class Person
# =begin
# This is
# a multiline
# comment
# and should
# be ignored
# =end
#     attr_reader :name, :lastname

#     def initialize(name, lastname)
#         @name = name
#         @lastname = lastname
#     end
# end

# emp = Person.new("arjun", "manipes")
# puts emp.name, emp.lastname

# is_online = true

# page = unless is_online
#   "maintenance"
# else
#   "Homepage"
# end

# puts page

# def calc(num)
#   return 0 if num.zero?
#   num + calc(num - 1)
# end

# puts calc(5)

# require_relative "6_1_test_module"

# puts Encryption::encrypt('test')

# person = User.new('arjun')
# p person.encrypted_password('test')

# arr = [
#   ["foo", "bar", "biz", "fozz", "arjun"],
#   ["a", "b", "c", "d"],
#   [1, 2, 3, 4]
# ]

# counter = 0
# search = nil
# param = "arjun"

# search = catch(:found) do
#   arr.each { |row|
#     row.each { |item|
#       counter += 1
#       throw(:found, item) if item == param
#     }
#   }
# end
# puts "Counter: #{counter}"
# puts "Search: #{search}"
class Person
  attr_accessor :name, :position, :rate

  def initialize(name, position, rate)
    @name = name
    @position = position
    @rate = rate
  end

  def to_s
    "#{@name} (#{@position}) - #{@rate}"
  end
end

employee = {
  "A001": Person.new('Arjun', 'dev', 1000),
  "A002": Person.new('Patty', 'wife', 2500)
}

id = gets.chomp.upcase.to_sym
emp1 = employee[id]

p "RATE: #{emp1.send('rate'.to_sym)}"
p emp1.to_s
