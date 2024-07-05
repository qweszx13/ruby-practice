def call_block
  puts "start of method"
  yield
  yield
  puts "End of method"
end

call_block { puts "is this real??" }

def who_says_what
  yield("Dave","hello")
  yield("Andy","goodbye")
end

who_says_what { |person, pharse| puts "#{person} says #{pharse}"}

animals = %w{ ant bee cat dog }
animals.each { |animal| puts animal }

['cat', 'dog', 'horse'].each { |name| print name , " " }

5.times { print "*" }

3.upto(6) {|i| print i}
('a'..'e').each {|char| print char}


