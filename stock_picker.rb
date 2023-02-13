# Stock Picker Project - T.O.P.

def stock_picker(prices_array)
    lowest_price = prices_array[0]

    lowest_index = 0

    buy_sell_days = [0, 0]

    profit = 0
      
    prices_array.each_with_index do |price, index|
      if price < lowest_price
        lowest_price = price
        lowest_index = index
      end

      if profit < price - lowest_price
        profit = price - lowest_price
        buy_sell_days = [lowest_index, index]
      end
    end
    buy_sell_days
  end
  
  p stock_picker([17, 3, 6, 9, 15, 8, 5, 1, 10])

#################################################################################################################################

# DONE - Create a method that takes an array as the perameter
# DONE - Create empty variables to hold
#         -lowest price
#         -lowest index
#         -profit
#         -an array of the best day to buy and the best day to sell
# DONE - Iterate through the array of prices
# DONE - Compare if the individual prices, making sure to buy low and sell high
# DONE - Store everything appropriately
# DONE - Return the new buy sell array
# DONE - Make sure negatives don't break things.
