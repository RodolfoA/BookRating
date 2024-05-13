//
//  HomeView.swift
//  BookRating
//
//  Created by Rodolfo Antoniazzi on 13/05/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var viewModel : BooksViewModel = BooksViewModel()
    let columns: [GridItem] =
                 Array(repeating: .init(.flexible()), count: 1)
    
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            ScrollView {
                LazyVGrid(columns:columns) {
                    ForEach(viewModel.books) { book in
                        BookResumeView(name: book.name, author: book.author, series: book.series, rating: book.rating, imageName: book.imageName)
                            .clipShape(.rect(cornerRadius: 10))
                            .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

class BooksViewModel {
    var books: [Book] = PreviewBooks.books
}
