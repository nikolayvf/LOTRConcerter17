//
//  SelectCurrency.swift
//  LOTRConcerter17
//
//  Created by Nikolay Filipov on 21/04/2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
   // @State var currency: Currency
    
    var body: some View {
        ZStack{
            //Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                //Text
                Text("Select the currency you are starting with:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                
                //Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], content: {
                    ForEach(Currency.allCases) {currency in
                        //CurrencyIcon(Currency.image, currencyName: Currency.name)
                        //Image(systemName: Currency.image)
                        Image(systemName: currency.image)
                            .font(.largeTitle)
                            .frame(height: 33)
                    }
                }).foregroundColor(.white)

                //Text
                Text("Select the currency you would wilke to convert to: ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.white)
                
                //Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], content: {
                    ForEach(Currency.allCases) {currency in
                        //CurrencyIcon(Currency.image, currencyName: Currency.name)
                        //Image(systemName: Currency.image)
                        Image(systemName: currency.image)
                            .font(.largeTitle)
                            .frame(height: 33)
                    }
                }).foregroundColor(.white)
                
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
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
