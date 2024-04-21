//
//  ExchangeInfo.swift
//  LOTRConcerter17
//
//  Created by Nikolay Filipov on 21/04/2024.
//

import SwiftUI

struct ExchangeInfo: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            //Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                //Title text
                Text("Exchange Rates")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .tracking(3)
                
                //Description text
                Text("The best place to exchange currencies. Access real-time rates, easy conversions, and seamless transactions, all in one convenient app. Ideal for travelers and international business needs.")
                    .foregroundStyle(.white)
                    .font(.title2)
                    .padding()
                
                //Exchange rate
                
                ExchangeRate(leftImageName: "lirasign.circle", text: "1 GBP = 1.16 EURO", rightImageName: "eurosign.circle")
                ExchangeRate(leftImageName: "lirasign.circle", text: "1 GBP = 191.29 YEN", rightImageName: "yensign.circle")
                ExchangeRate(leftImageName: "eurosign.circle", text: "1 EURO = 0.86 GBP", rightImageName: "lirasign.circle")
                ExchangeRate(leftImageName: "eurosign.circle", text: "1 EURO = 164.99 YEN", rightImageName: "yensign.circle")
                ExchangeRate(leftImageName: "yensign.circle", text: "1 YEN = 0.0052 GBP", rightImageName: "lirasign.circle")
                ExchangeRate(leftImageName: "yensign.circle", text: "1 YEN = 0.0061 EURO", rightImageName: "eurosign.circle")

                
                //Done button
                Button("Done"){
                    dismiss()
                }
                .foregroundColor(.black)
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .font(.largeTitle)
                .padding()
            }
        }
    }
}

#Preview {
    ExchangeInfo()
}
