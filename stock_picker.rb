# given an array of prices on consecutive days, finds the best days to buy and sell
# returns [b, s] where b is the best buy date index and s is the best sell date index
# returns [] if there is no way to make a profit during any of the days
# e.g. returns [1,4] in the example below because 15 - 3 is the maximum profit available

def stock_picker(stocks)
  profit = 0
  best_days = []
  stocks.each_with_index do |price1, index1|
    stocks[index1..-1].each_with_index do |price2, index2|
      if price2 - price1 > profit
        profit = price2 - price1
        best_days[0] = index1
        best_days[1] = index1 + index2
      end
    end
  end
  p best_days
end

stock_picker([17,3,6,9,15,8,6,1,10])