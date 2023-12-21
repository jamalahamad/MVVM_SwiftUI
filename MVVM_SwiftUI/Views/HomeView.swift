//
//  HomeView.swift
//  MVVM_SwiftUI
//
//  Created by Jamal Ahamad on 20/12/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject var productVM = ProductViewModel()
    
    var body: some View {
        VStack {
            List(productVM.products) { product in
                ProductComponent(product: product )
            }
            .onAppear {
                if productVM.products.isEmpty {
                    Task {
                        await productVM.fetchData()
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
