# frozen_string_literal: true

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(prices)
  buy = 0
  sell = 0
  profit = 0

  prices.each_with_index do |price, idx|
    (idx + 1...prices.length - 1).each do |i|
      next unless prices[i] - price > profit

      profit = prices[i] - price
      buy = idx
      sell = i
    end
  end
  [buy, sell]
end

p stock_picker(prices)
