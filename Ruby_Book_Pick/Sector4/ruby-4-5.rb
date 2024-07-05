square = "some shape"

sum = 0
[1,2,3,4].each do |value ;square| #この部分注目 squareはただブロックの中で使われる
  square = value**2
  sum += square
end

puts sum
puts square

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib_up_to(1000) do |f|
  print f, " "
end

[1,3,5,6,9].each { |i| print i, " " }

class Array
  def find
    each do |value|
      return value if yield value
    end
  end
end

dummy_array = [1,2,3,4,5]
dummy_hash = { "a": 1, "b": 2, "c": 3, "d": 4 }
puts
p dummy_array.inject(0) {|initial, element| initial+element}
p dummy_array.inject(1) {|initial, element| initial*element}
p dummy_array.inject(:+)
p dummy_array.inject(:-)

p dummy_hash.inject(0) { |initial, element| initial+element[1] }

