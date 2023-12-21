//
//  File.swift
//  MVVM_SwiftUI
//
//  Created by Jamal Ahamad on 20/12/23.
//

import Foundation

@MainActor class ProductViewModel: ObservableObject {
    
    @Published var products = [Product]()
    
        func fetchData() async {
            guard let downloadData: ProductResponse = await ApiMaager().getProduct(endPoint: "products")  else { return }
            print("========\(downloadData)")
            products = downloadData.products
        }
}
