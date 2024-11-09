//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by adarsh shukla on 09/11/24.
//

import SwiftUI

struct ExchangeInfo : View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image(.parchment).resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(7)
                
                Text("Here are Prancy Pony we are happy to offer to you a place where you can exchange your old coins for new ones.We used to take Brady Bucks but now we are using Prancy Ponies.")
                    .font(.title2)
                
                
                ExtractedRate(leftImage: .goldpiece, rightImage: .goldpenny, text: "1 Gold Piece = 4 Gold Pennies")
                
                ExtractedRate(leftImage: .goldpenny, rightImage: .silverpiece, text: "1 Gold Penny = 4  Silver Pieces")
                
                ExtractedRate(leftImage: .silverpiece, rightImage: .silverpenny, text: "1 Silver Pieces= 4 Silver Pennies")
                 
                ExtractedRate(leftImage: .silverpenny, rightImage: .copperpenny, text: "1 Silver Pennies = 100 Copper Pennies ")
                
                Button("Done"){
                    dismiss()
                }.buttonStyle(.borderedProminent).tint(.brown)
                    .font(.largeTitle).padding().foregroundStyle(.white)
                    
            }
            .foregroundStyle(.black)
            .padding()
        }
    }
}



#Preview {
    ExchangeInfo()
}

 
