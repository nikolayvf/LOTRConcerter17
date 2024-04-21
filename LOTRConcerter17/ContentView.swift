//
//  ContentView.swift
//  LOTRConcerter17
//
//  Created by Nikolay Filipov on 16/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    //we use property wrapper @State
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        
        ZStack{
            //Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            
            VStack{
                
                //Synergy image
                Image(.synegyLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .padding(.bottom)
                
                //Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //Currency conversion section
                HStack{
                    //Left conversion section
                    VStack{
                        
                        //Currecny
                        HStack{
                            //Currency image
                            Image(systemName: "eurosign.circle")
                            .font(.largeTitle)
                            .frame(height: 33)
                            .foregroundStyle(.white)
            
                            
                            //Currency text
                            Text("EURO")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        //Textfield
                     TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    //Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                        .frame(height: 50)
                        .padding(.bottom)
                        
                    
                    
                    //Right conversion section
                    VStack{
                        
                        //Currecny
                        HStack{
                            //Currency text
                            Text("USD")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //Currency image
                            Image(systemName: "dollarsign.circle")
                            .font(.largeTitle)
                            .frame(height: 33)
                            .foregroundStyle(.white)
        
                        }
                        //Textfield
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }.padding()
//                    .background(.gray.opacity(0.5))
//                    .clipShape(.capsule)
                Spacer()
                //Info button
                HStack {
                    
                    Spacer()
                    
                    Button {
                            //every time we click on the button we change its value with .toggle
                            //to true/false
                            showExchangeInfo.toggle()
                            //print("showExchangeInfo value: \(showExchangeInfo)")
                        } label: {
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                    }
                        .padding(.trailing)
                      
                }
                
            }
        }  
        .sheet(isPresented: $showExchangeInfo) {
            ExchangeInfo()
        }
    }
}
#Preview {
    ContentView()
}
