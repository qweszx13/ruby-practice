puts 'Hello Taro'

puts "Hello Jiro"

puts "Hello\nSaburo"

name = 'Shiro'

puts "Hello #{name}"

print "What's your name?"

name = gets

puts name

print "Your name?"
name = gets.strip
puts "*" * 10
puts "Hello #{name}"
puts "Hello " + name
puts name[0]
puts name[1]
puts name[2]
name[0] = "*"
name[1] = "*"
name[2] = "*"
puts name
puts name.size
puts name.length
