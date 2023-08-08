puts "Letter Grading"

print "Enter Grade Point: "
grade = gets.chomp.to_i # Use chomp to remove newline character

result = case grade
when 90..100 then "Letter grade A"
when 80...90 then "Letter Grade B"
when 70...80 then "Letter Grade C"
when 0...70 then "Fail"
else "Invalid input"``
end

puts result