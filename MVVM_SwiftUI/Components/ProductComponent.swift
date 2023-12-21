//
//  ProductComponent.swift
//  MVVM_SwiftUI
//
//  Created by Jamal Ahamad on 19/12/23.
//

import SwiftUI

struct ProductComponent: View {
    var product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImage(
                url: URL(string: product.thumbnail),
                content: { image in
                    image.resizable()
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 250)
                },
                placeholder: {
                    Image("placeHolder")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 250)
                }
            )
            
            Text(product.title).font(.title)
                .padding(.top, 10)
                .padding(.leading, 10)
                .foregroundColor(.black)
            HStack {
                Text("Price  $\(product.price)")
                    .foregroundColor(.black)
                    .bold()
                Spacer()
                Text("Discount \(product.discountPercentage.roundDouble()) %")
                    .foregroundColor(.black)
                    .bold()
            }
            .padding(20)
            Text(product.description).font(.body)
                .padding(.bottom,10)
                .foregroundColor(.black)
                .padding(.leading, 20)
        }
        .background(Rectangle())
        .foregroundColor(.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding([.leading, .trailing])
    }
}

struct ProductComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProductComponent(product: Product(id: 0, title: "Iphone", description: "Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality", price: 9, discountPercentage: 9, rating: 9.0, stock: 0, brand: "", category: "", thumbnail: "", images: []))
    }
}
