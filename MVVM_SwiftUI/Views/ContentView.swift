//
//  ContentView.swift
//  MVVM_SwiftUI
//
//  Created by Jamal Ahamad on 19/12/23.
//

import SwiftUI
import UIKit
// NEWS API Key  https://mediastack.com/dashboard//
// 1e6f83c5c91606927c62ec43763d911b


struct ContentView: View {
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                        .bold()
                }
                .animation(.easeInOut(duration: 0.2), value: selection)
                .foregroundColor(.gray)
                .tag(0)
                ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                        .bold()
                }
                .animation(.easeInOut(duration: 0.2), value: selection)
                .foregroundColor(.gray)
                .tag(1)
        }
        .accentColor(.purple)
        .onAppear{UITabBar.appearance().barTintColor = .white}
        .edgesIgnoringSafeArea(.all)
        .padding(.top, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
