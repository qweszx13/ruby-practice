for i in 1..5
  puts i.to_s + " hello"
end

for j in 1..10
  puts 4 * j
end

money = 500
while money < 1000
  money *= 1.1
  puts money
end

money = 100
for year in 1..30
  money *= 1.05
  # if money > 300
  #   break
  # end
  break if money > 300
  next if money < 200
  puts "Year #{year}: #{money}"
end

a = [ 1, 'cat', 3.14 ]
puts("The first element is #{a[0]}")
a[2] = nil
puts("The array is now #{a.inspect}")

a = ['ant', 'bee', 'cat', 'dog', 'elk']
p a[0]
p a[3]
b = %w{ ant bee cat dog elk }
p b[0]
p b[3]

inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwinf',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}

p inst_section['oboe']
p inst_section['violin']
p inst_section['trumpete']

histogram = Hash.new(0)
histogram['ruby'] += 1
p histogram['ruby']

