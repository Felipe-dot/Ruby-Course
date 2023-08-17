def stock_picker(prices)
    min_price = prices[0]
    min_i = 0
    max_profit = 0
    best_days = [0,0]

    prices.each_with_index do |buy_price, buy_day|
        if(buy_price < min_price)
            min_price = buy_price
            min_i = buy_day 
            next
        end 

        if buy_price - min_price > max_profit
            max_profit = buy_price - min_price
            best_days = [min_i, buy_day]
        end 
    end 

    best_days 
end 


prices = [17,3,6,9,15,8,6,1,10]
best_days = stock_picker(prices)
# => [1,4] 