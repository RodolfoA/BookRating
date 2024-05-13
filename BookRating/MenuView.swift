//
//  MenuView.swift
//  BookRating
//
//  Created by Rodolfo Antoniazzi on 13/05/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        Button("Crash") {
          fatalError("Crash was triggered")
        }
    }
}

#Preview {
    MenuView()
}
