import SwiftUI

struct ExchangeRate: View {
    
    let leftImageName: String
    let text: String
    let rightImageName: String
    
    var body: some View {
        HStack {
            // Left currency symbol
            Image(systemName: leftImageName)
                .font(.largeTitle)
                .frame(height: 33)
                .foregroundStyle(.white)
            
            // Exchange rate text
            Text(text)
                .foregroundStyle(.white)
            
            // Right currency image
            Image(systemName: rightImageName)
                .font(.largeTitle)
                .frame(height: 33)
                .foregroundStyle(.white)
            
        }.background(Color.black)
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(leftImageName: "lirasign.circle", text: "1 GBP = 1.16 EURO", rightImageName: "eurosign.circle")
    }
}
