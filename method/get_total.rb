def get_total(price, amount, rate = 1.1)
  price * amount * rate
end

puts get_total(100, 10)
puts get_total(150, 10)
puts get_total(200, 10)
puts get_total(300, 10)
puts get_total(120, 10, 1.08)
