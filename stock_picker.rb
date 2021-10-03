def stock_picker(stock_prices)
    sell=0
    buy=0
    profit=0
    stock_prices.each_index do |buy_day|
        stock_prices.each_index do |sell_day|
            new_profit=stock_prices[sell_day]-stock_prices[buy_day]
            if sell_day>buy_day
                if new_profit>profit
                    sell=sell_day
                    buy=buy_day
                    profit=stock_prices[sell]-stock_prices[buy]
                end
            end
        end
    end
    best_day=[buy,sell]
    p best_day
end
stock_picker([17,3,6,9,15,8,6,1,10])