person1 = "Tim"
person2 = person1.dup
person1[0] = "J"
puts "person1: #{person1}"
puts "person2: #{person2}"

person3 = "Jimmy"
person4 = person3
person3[0] = "Z"
puts "person3: #{person3}"
puts "person4: #{person4}"

person3.freeze
# person4[0] = "J" 不可能