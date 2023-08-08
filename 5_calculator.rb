add = lambda { |x,y| x+y }
subtract = lambda { |x,y| x-y } 
multiply = lambda { |x,y| x*y }
divide = lambda { |x,y| x/y }

def handler(func)
  print"Num 1: "
  num1 = gets.chomp.to_i
  
  print"Num2: "
  num2 = gets.chomp.to_i
  puts "Result: = #{func.call(num1, num2)}".center(50, '-')

end

begin
  options = [
  "SIMPLE CALCULATOR",
  "a - Add",
  "b - Subtract",
  "c - Multiply",
  "d - Divide",
  "q - quit"
]

  options.each { puts _1}
  print "Select a/b/c/d/q: " 
  choice = gets.chomp

  result = 0

  case choice
  when 'a' then handler add
  when 'b' then handler subtract
  when 'c' then handler multiply
  when 'd' then handler divide
  end
  puts
end while choice != 'q'