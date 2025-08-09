//
//  Book.swift
//  Bookworm
//
//  Created by Aleksandr Zhazhoyan on 05.08.2025.
//

import Foundation
import SwiftData

@Model
class Book {
    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: Int
    var date: Date
    
    var hasValid: Bool {
        !title.trimmingCharacters(in: .whitespaces).isEmpty &&
        !author.trimmingCharacters(in: .whitespaces).isEmpty &&
        !genre.trimmingCharacters(in: .whitespaces).isEmpty &&
        !review.trimmingCharacters(in: .whitespaces).isEmpty &&
        rating > 0
    }
    
    init(title: String, author: String, genre: String, review: String, rating: Int, date: Date = .now) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
        self.date = date
    }
}
