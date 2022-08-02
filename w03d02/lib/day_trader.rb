def day_trader(prices)
  buy_day = 0
  sell_day = 0
  profit = 0
  prices.each_with_index do |price, index|
    (index + 1...prices.length).each do |next_index|
      next_price = prices[next_index]
      next_profit = next_price - price
      next unless next_profit > profit

      buy_day = index
      sell_day = next_index
      profit = next_profit
    end
  end
  "Buy on day #{buy_day + 1} and sell on day #{sell_day + 1} for a profit of #{profit}€"
end
