puts "=== #{'BMI Calculator'.center(15)} ==="
puts "BMI Categories"

categories = [
    "- Sever Thinness < 16",
    "- Moderate Thinnes 16-17",
    "- Mild Thinness 17-18.5",
    "- Normal 18.5-25",
    "- Overweight 25-30",
    "- Obese > 30"
]

categories.each { puts _1}
puts

print "Height(cm):" # print function does not add new line
height = gets.chomp.to_f

print "Weight(kg):"
weight = gets.chomp.to_f

bmi = weight / (height / 100) **2

puts "BMI = #{bmi}" # {} is called interpolation