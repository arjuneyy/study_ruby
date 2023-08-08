# Fibonacci: 1 1 2 3 5 8 13 21 34 55 ...

print "Enter a number: "
num = gets.chomp.to_i

fibPrev = 0
fib = 1

while fib <= num
puts fib
  # temp = fib
  # fib += fibPrev
  # fibPrev = temp

  # using parallel assignment
  fibPrev, fib = fib, fib+fibPrev
end

