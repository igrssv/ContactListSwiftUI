//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Игорь Сысоев on 10.01.2022.
//

import SwiftUI

struct ContactList: View {
    let contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(
                    destination: ContactProfile(contact: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Contact.generationContacts())
    }
}
