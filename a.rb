def stock_picker(arr)
	h = {}
	arr.each.with_index do |buy, buy_index| 
		arr.each.with_index do |sell, sell_index| 
			if sell_index > buy_index
				total = sell - buy
				h[[buy_index, sell_index]] = total
			end
		end
	end
	h.key(h.values.max)
end
 p stock_picker([17,3,6,9,15,8,6,1,10])
