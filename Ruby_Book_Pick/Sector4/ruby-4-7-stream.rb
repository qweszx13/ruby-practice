def Integer.all
  Enumerator.new do |y, n: 0|
    loop { y.yield(n += 1)}
  end.lazy
end

p Integer.all.first(10)

def palindrome?(n)
  n = n.to_s
  n == n.reverse
end

p Integer
    .all
    .select { |i| (i % 3).zero? }
    .select { |i| palindrome?(i) }
    .first(10)

lazy_stream = (1..Float::INFINITY).lazy.map { |x| x * x }
p lazy_stream
    .select { |i| (i % 3).zero? }
    .first(10)# 출력: [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]