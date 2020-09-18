# each stocks index/value represents a single day-value pair
stocks = [3, 6, 12, 4, 7, 9, 14, 3, 1, 4, 10]

def pick_stock(stocks) 
  
  picked_cache = { 
    days: nil,
    profit: 0
  }

  stocks.each_with_index do |val, idx|
    if idx < stocks.length - 1
      ((idx + 1)..(stocks.length - 1)).each do |i|
        profit = stocks[i] - val
        profit > picked_cache[:profit] ? (picked_cache[:days] = [idx, i]; picked_cache[:profit] = profit) : next
      end
    end
  end

  picked_cache[:days]
end

p pick_stock(stocks)