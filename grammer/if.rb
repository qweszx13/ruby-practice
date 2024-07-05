puts "what is your score"
score = gets.to_i

if score >= 90
  puts "Your score is #{score} - A"
elsif  score >= 80
  puts "Your score is #{score} - B"
elsif  score >= 70
  puts "Your score is #{score} - C"
else
  puts "Your score is #{score} - F"
end

puts "A" if score >= 90

case score
when 90..100
  puts "A"
when 80..90
  puts "B"
when 70..80
  puts "C"
else
  puts "F"
end
