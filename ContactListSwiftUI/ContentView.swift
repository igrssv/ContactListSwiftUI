//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Игорь Сысоев on 09.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        TabView {
            ContactList()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Contact")
            }
//            NumberList()
//                .tabItem {
//                    Image(systemName: "phone")
//                    Text("Number")
//                }
        }
        .padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
