//
//  Currency.swift
//  LOTRConverter
//
//  Created by Adarsh Shukla on 09/11/24.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    case copperPenny = 6400
    case silverPenny = 64
    case goldPenny = 16
    case silverPiece = 4
    case goldPiece = 1

    var id: Currency { self }

    var image: ImageResource {
        switch self {
        case .copperPenny:
            return .copperpenny  // Assuming "copperPenny" is the asset name in your project
        case .silverPenny:
            return .silverpenny
        case .silverPiece:
            return .silverpiece
        case .goldPiece:
            return .goldpiece
        case .goldPenny:
            return .goldpenny
        }
    }

    var name: String {
        switch self {
        case .copperPenny:
            return "Copper Penny"
        case .silverPenny:
            return "Silver Penny"
        case .goldPenny:
            return "Gold Penny"
        case .silverPiece:
            return "Silver Piece"
        case .goldPiece:
            return "Gold Piece"
        }
    }
    
    
    func convert(amountString: String, currency: Currency) -> String{
        guard let doubleAmount = Double(amountString) else{
            return ""
        }
        let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
        
        
        return String(format:"%.2f",convertedAmount)
    }
}
