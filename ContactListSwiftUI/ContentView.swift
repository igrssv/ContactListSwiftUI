//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Игорь Сысоев on 09.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let contacts = Contact.generationContacts()
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Contact")
            }
            NumberList(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Number")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
