module CurrencyHelpers
  JPY_TO_USD = 0.0068
  USD_TO_JPY = 146.78

  def self.jpy_to_usd(jpy)
    jpy * JPY_TO_USD
  end

  def self.usd_to_jpy(usd)
    usd * USD_TO_JPY
  end
end

puts CurrencyHelpers.jpy_to_usd(100000)
puts CurrencyHelpers.usd_to_jpy(1000)
p CurrencyHelpers::JPY_TO_USD
p CurrencyHelpers::USD_TO_JPY
