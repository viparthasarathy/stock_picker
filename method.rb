def stock_picker(dayValues)
	##takes array of ints representing value of stock on each individual day, returns array 
	##of size 2 of best day to purchase and best day to sell.
	greatestDifference = 0
	currentPurchaseDay = 0
	while currentPurchaseDay < dayValues.length - 1
		currentSellDay = currentPurchaseDay + 1
		while currentSellDay < dayValues.length
			currentDifference = dayValues[currentSellDay] - dayValues[currentPurchaseDay]
			if currentDifference > greatestDifference
				greatestDifference = currentDifference
				bestPurchaseDay = currentPurchaseDay
				bestSellDay = currentSellDay
			end
			currentSellDay += 1
		end
		currentPurchaseDay += 1	
	end
	bestDays = [bestPurchaseDay, bestSellDay]
end

