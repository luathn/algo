def max_profit(prices)
  min_price = Float::INFINITY
  max_profit = 0

  prices.each do |price|
    min_price = price if price < min_price
    profit = price - min_price
    max_profit = profit if profit > max_profit
  end
  max_profit
end

# prices = [7, 1, 5, 6, 3]
# prices = [7, 1, 5, 6, 3, 8, 4]
prices = [7, 6, 4, 3, 1]

puts max_profit(prices)
