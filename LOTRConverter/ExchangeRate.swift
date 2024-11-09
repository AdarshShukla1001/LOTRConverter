//
//  File.swift
//  LOTRConverter
//
//  Created by adarsh shukla on 09/11/24.
//

import SwiftUI

struct ExtractedRate: View {
    let leftImage: ImageResource
    let rightImage: ImageResource
    let text: String

    var body: some View {
        HStack {
            Image(leftImage).resizable().scaledToFit()
                .frame(height: 33)

            Text(text)

            Image(rightImage).resizable().scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExtractedRate(
        leftImage: .goldpiece, rightImage: .goldpenny, text: "1 Gold Piece = 4 Gold Pennies")
}
