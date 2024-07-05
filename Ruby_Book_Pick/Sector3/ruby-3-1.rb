class BookInStock

  attr_reader(:isbn)
  attr_accessor(:price)

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price_in_cents
    Integer(price * 100 + 0.5)
  end
  # def isbn -> よく使うので、attr_reader
  #   @isbn
  # end
  # def price
  #   @price
  # end

  # def price=(new_price) attr_writer setter のみ定義、でもこの場合が少ないから、setter,getter 同時にしてくれる attr_accessorメーソッド
  #   @price = new_price
  # end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

b1 = BookInStock.new("is new b1 book", 3)
p b1
puts b1
b2 = BookInStock.new("is new b2 book", 3.14)
p b2
puts b2
b3 = BookInStock.new("is new b3 book", 5.67)
p b3
puts b3
puts "ISBN = #{b1.isbn}"
puts "Price = #{b1.price}"

b1.price = b1.price * 0.75

puts "New Price = #{b1.price}"
puts "price in cents: #{b1.price_in_cents}"

b1.price_in_cents = 1234
puts "change virtual price: #{b1.price}"
puts "change virtual price in cents: #{b1.price_in_cents}"
