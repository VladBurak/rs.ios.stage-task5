import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        if (prices.isEmpty) {
            return 0
        }
     
        var expectedProfit = 0
        for i in 0..<prices.count {
            var prof = 0
            for j in i+1..<prices.count {
                if (prices[j] - prices[i] > prof) {
                    prof = prices[j] - prices[i]
                    
                }
            }
            expectedProfit += prof
        }
        return expectedProfit
    }
}
