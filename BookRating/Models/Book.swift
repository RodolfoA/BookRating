//
//  Book.swift
//  BookRating
//
//  Created by Rodolfo Antoniazzi on 13/05/24.
//

import Foundation

class Book : Identifiable {
    let name : String
    let author : String
    let series: String
    var rating : Double
    var imageName: String
    
    init(name: String, author: String, series: String, rating: Double, imageName: String) {
        self.name = name
        self.author = author
        self.series = series
        self.rating = rating
        self.imageName = imageName
    }
}
