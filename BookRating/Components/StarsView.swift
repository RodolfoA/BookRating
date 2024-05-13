//
//  StarsView.swift
//  BookRating
//
//  Created by Rodolfo Antoniazzi on 13/05/24.
//

import SwiftUI

struct StarsView: View {
    
    var rating: Double
    
    var body: some View {
        let stars = HStack(spacing: 0) {
            ForEach(0..<5, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        
        stars.overlay(
            GeometryReader { g in
                let width = rating / 5 * g.size.width
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: width)
                        .foregroundColor(.yellow)
                }
            }
                .mask(stars)
        )
        .foregroundColor(.gray)
    }
}

#Preview {
    StarsView(rating: 4.5)
}
