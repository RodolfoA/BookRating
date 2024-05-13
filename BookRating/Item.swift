//
//  Item.swift
//  BookRating
//
//  Created by Rodolfo Antoniazzi on 13/05/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
