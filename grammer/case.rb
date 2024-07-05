print "Score?"
score = gets.to_i

case score
when 100
  puts "Super"
when 90..99
  puts "A"
when 80..89
  puts "B"
when 70..79
  puts "C"
else
  puts "F"
end

fruit = gets.to_s

case fruit
when "Banana","Apple"
  sum += 100
  puts fruit
when "Grape","Mango"
  sum += 200
  pu
end