//
//  ProfileView.swift
//  MVVM_SwiftUI
//
//  Created by Jamal Ahamad on 20/12/23.
//

import SwiftUI

struct ProfileView: View {
    let dict : [String: [Int]] = ["key1": [1,2,3,4], "key2": [6,7,8,9]]
    var body: some View {
        VStack {
            Section {
                List(dict.keys.sorted(), id: \.self) { key in
                    DisclosureGroup(key) {
                        ForEach(dict[key]!, id: \.self) { x in
                            Text("\(x)")
                        }
                    }
                } // List
            } // Section
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
