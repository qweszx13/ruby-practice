short_enum = [1,2,3].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next}: #{long_enum.next}"
end

def each_char_with_index(str)
  result = []
  str.each_char.with_index {|char, index| result << [char, index]}
  result
end

p each_char_with_index("cat")

p "cat".enum_for(:each_char).to_a

enum_in_threes = (1..10).enum_for(:each_slice, 3).to_a
p enum_in_threes

triangular_number = Enumerator.new do |yielder|
  num = 0
  count = 1
  loop do
    num += count
    count += 1
    yielder.yield num
  end
end

5.times { print triangular_number.next, " " }
p triangular_number.first(20)
