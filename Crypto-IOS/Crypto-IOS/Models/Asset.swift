import Foundation

struct Asset:Decodable{
    let id: String
    let name: String
    let symbol: String
    let priceUsd: String
    let changePercent24hr: String
    
    
    var percentage:Double{
        Double(changePercent24hr) ?? 0
    }
    
    var formattedPrice:String{
        String(format: "%.2f", Double(priceUsd) ?? 0)
    }
    
    var formattedPercentage:String{
        String(format: "%.2f", Double(changePercent24hr) ?? 0)
    }
    
    var iconUrl:URL?{
        URL(string: "https://raw.githubusercontent.com/nomics-project/assets/master/icons/16x16/\(symbol).png")
    }
    
}



