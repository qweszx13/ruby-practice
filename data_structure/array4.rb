#names = ["Taro", "Jamse", "Tom"]
names = %W(Taro Jamse Tom)

p names

connected_names = names.join(", ")
p connected_names

scores = [70, 90, 80]
scores.each do |score|
  puts "Score: #{score}"
end

scores.each_with_index do |score,index|
  puts "Score:#{index}-#{score}"
end

scores.each_with_index { |score,index|
  puts "Score: #{index} #{score}"
}
