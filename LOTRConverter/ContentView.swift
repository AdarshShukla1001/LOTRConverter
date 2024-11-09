//
//  ContentView.swift
//  LOTRConverter
//
//  Created by adarsh shukla on 08/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //            Background Image
            Image(.background).resizable().ignoresSafeArea()
            VStack {
                //                Prainsing pony
                Image(.prancingpony).resizable().scaledToFit().frame(height: 200)

                //  currency exchange text
                Text("Currency Exchange").font(.largeTitle).foregroundStyle(.white )

                HStack {
                    VStack {
                        HStack {
                            //   coin image
                            Image(.silverpenny).resizable().scaledToFit().frame( height: 33)
                            
                            Text("Silver Peice")
                                .font(.headline)
                                .foregroundStyle(.white )

                        }
//                        Textfield
                        Text("TextField")
                    }
                    
                    Image(systemName: "equal").font(.largeTitle)
                        .foregroundStyle(.white).symbolEffect(.pulse)
                    //
                    
                    VStack {
                        HStack {
                            //   coin image
                            
                            
                            Text("Gold Peice")
                                .font(.headline)
                                .foregroundStyle(.white )
                            
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame( height: 33)

                        }
//                        Textfield
                        Text("TextField")
                        
                        
                        
                    }
                    
                    
                   
                }
                 
                
                HStack{
                    Spacer()
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.white).padding(20)
                }
                //
            }
            .border(.blue)

            //            Info Badge
        }
    }
}

#Preview {
    ContentView()
}
