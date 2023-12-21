//
//  ProductResponse.swift
//  MVVM_SwiftUI
//
//  Created by Jamal Ahamad on 20/12/23.
//

import Foundation

struct ProductResponse: Codable {
    var products: [Product]
    var total: Int
    var limit: Int
    var skip: Int

////    init(from decoder: Decoder) throws {
////        let container = try decoder.container(keyedBy: CodingKeys.self)
////        let product = try container.decode([Product].self, forKey: .product)
////        let limit = try container.decode(String.self, forKey: .limit)
////        let total = try container.decode(String.self, forKey: .total)
////        let skip = try container.decode(String.self, forKey: .skip)
////    }
}

struct Product: Codable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var price: Int
    var discountPercentage: Double
    var rating: Double
    var stock: Int
    var brand: String
    var category: String
    var thumbnail: String
    var images: [String]
//
////    init(from decoder: Decoder) throws {
////           let container = try decoder.container(keyedBy: CodingKeys.self)
////           let id = try container.decode(String.self, forKey: .id)
////        let title = try container.decode(String.self, forKey: .title)
////        let description = try container.decode(String.self, forKey: .description)
////        let price = try container.decode(String.self, forKey: .price)
////        let discountPercentage = try container.decode(String.self, forKey: .discountPercentage)
////        let rating = try container.decode(String.self, forKey: .rating)
////        let stock = try container.decode(String.self, forKey: .stock)
////        let brand = try container.decode(String.self, forKey: .brand)
////        let category = try container.decode(String.self, forKey: .category)
////        let thumbnail = try container.decode(String.self, forKey: .thumbnail)
////        let images = try container.decode([String].self, forKey: .images)
////
////       }
}
//
//struct ProductResponse: Codable {
//    let products: [Product]
//    let total, skip, limit: Int
//}
//
//// MARK: - Product
//struct Product: Codable,Identifiable {
//    let id: Int
//    let title, description: String
//    let price: Int
//    let discountPercentage, rating: Double
//    let stock: Int
//    let brand, category: String
//    let thumbnail: String
//    let images: [String]
//}
