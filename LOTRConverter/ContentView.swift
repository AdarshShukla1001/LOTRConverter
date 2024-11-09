//
//  ContentView.swift
//  LOTRConverter
//
//  Created by adarsh shukla on 08/11/24.
//

import SwiftUI

struct ContentView: View {

    @State var showExchangeInfo = false
    @State var showSelectCurrency = false

    @State var leftCurrencyAmount = ""
    @State var rightCurrencyAmount = ""

    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPiece

    var body: some View {
        ZStack {
            //            Background Image
            Image(.background).resizable().ignoresSafeArea()

            VStack {

                //                Prainsing pony
                Image(.prancingpony).resizable().scaledToFit().frame(height: 200)

                //  currency exchange text
                Text("Currency Exchange").font(.largeTitle).foregroundStyle(.white)

                HStack {
                    VStack {
                        HStack {
                            //   coin image
                            Image(leftCurrency.image).resizable().scaledToFit().frame(height: 33)

                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)

                        }
                        //                        Textfield
                        TextField("Amount", text: $leftCurrencyAmount)
                            .textFieldStyle(.roundedBorder).padding()
//                            .focused(leftCurrencyAmount)
                            .onChange(of:leftCurrencyAmount){
                                rightCurrencyAmount = leftCurrency.convert(amountString:leftCurrencyAmount, currency:   rightCurrency)
                            }
                    }.onTapGesture {
                        showSelectCurrency.toggle()
                    }

                    Image(systemName: "equal").font(.largeTitle)
                        .foregroundStyle(.white).symbolEffect(.pulse)
                    //

                    VStack {
                        HStack {
                            //   coin image

                            Text(rightCurrency.name).font(.headline)
                                .foregroundStyle(.white)

                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)

                        }.onTapGesture {
                            showSelectCurrency.toggle()
                        }

                        //                        Textfield
                        TextField("Amount", text: $rightCurrencyAmount)
                            .textFieldStyle(.roundedBorder).padding()
//                            .focused($rightCurrencyAmount)
                            .onChange(of:rightCurrencyAmount){
                                leftCurrencyAmount = rightCurrency.convert(amountString:rightCurrencyAmount, currency:   leftCurrency)
                            }

                    }

                }.padding()
                    .background(.black.opacity(0.5))
                    .clipShape(.capsule)
                Spacer()

                VStack {

                    HStack {
                        Spacer()
                        Button(action: {
                            print("Button was tapped!")
                            showExchangeInfo.toggle()

                        }) {
                            Image(systemName: "info.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white).padding(.trailing)
                        }.padding(.trailing)
                            .sheet(isPresented: $showExchangeInfo) {
                                ExchangeInfo()
                            }

                    }.sheet(isPresented: $showSelectCurrency) {
                        SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
                    }

                }

            }
            .border(.blue)

            //            Info Badge
        }
    }
}

#Preview {
    ContentView()
}
