import SwiftUI

struct AssetView: View {
    let asset: Asset
    
    var body: some View {
        HStack{
            AsyncImage(url: asset.iconUrl) {image in
            image
                .resizable()
            }placeholder: {
                Image(systemName: "square")
            }.frame(width: 40, height: 40)
            
            Image(systemName: "square")
            VStack{
                Text(asset.symbol)
                Text(asset.name)
            }
        
      Text("\(asset.formattedPercentage)")
            
            Text("\(asset.formattedPrice)")
                
        }
    }
}

#Preview {
    AssetView(
        asset: .init(
            id: "bitcoin",
            name: "bitcoin",
            symbol: "BTC",
            priceUsd: "8600",
            changePercent24hr:"8.78"
        )
    )
}
