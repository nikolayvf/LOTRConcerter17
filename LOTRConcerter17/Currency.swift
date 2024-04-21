//
//  Currency.swift
//  LOTRConcerter17
//
//  Created by Nikolay Filipov on 21/04/2024.
//
import SwiftUI

struct ImageResource {
    var name: String
}

enum Currency: Double, CaseIterable, Identifiable {
    //  var id: Double {rawValue}
    // OR: ...
    var id: Currency {self}
    
    case GBP = 1
    case EURO = 1.16
    case YEN = 191.29
    
    //ImageResource - to String change
    var image: String {
        switch self {
        case .GBP:
           // ImageResource(name: "lirasign.circle")
            "lirasign.circle"
        case .EURO:
           // ImageResource(name: "eurosign.circle")
            "eurosign.circle"
        case .YEN:
            // ImageResource(name: "yensign.circle")
            "yensign.circle"
        }
    }
    
    var name: String {
        switch self {
        case .GBP:
           "GBP"
        case .EURO:
            "EURO"
        case .YEN:
            "YEN"
        }
    }
}



                    
