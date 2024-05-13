//
//  BookResumeView.swift
//  BookRating
//
//  Created by Rodolfo Antoniazzi on 13/05/24.
//

import SwiftUI

struct BookResumeView: View {
    
    var name: String
    var author: String
    var series: String
    var rating: Double
    var imageName: String
    
    var body: some View {
        ZStack {
            Color.cardBackground
            HStack (spacing: 10) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.leading)
                    .padding(.vertical)
                VStack (spacing: 10) {
                    Text(name)
                    Text(author)
                    if series != "" {
                        Text(series)
                    }
                    StarsView(rating: rating)
                }
                .padding(.trailing)
                .padding(.vertical)
            }
        }
        .presentationCornerRadius(10)
    }
}

#Preview {
    BookResumeView(name: "Animal Farm", author: "George Orwell", series: "", rating: 4.5, imageName: "animal farm")
}
