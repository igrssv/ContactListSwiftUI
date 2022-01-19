//
//  NumberList.swift
//  ContactListSwiftUI
//
//  Created by Игорь Сысоев on 10.01.2022.
//

import SwiftUI

struct NumberList: View {
    let contacts: [Contact]
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                    Section(contact.fullName) {
                        Label(
                            contact.number,
                              systemImage: "phone.fill"
                        )
                        Label(
                            contact.mail,
                              systemImage: "mail.fill"
                        )
                    }
                }
            .listStyle(.insetGrouped)
            .navigationTitle("Contact List")
        }
    }
}

struct NumberList_Previews: PreviewProvider {
    static var previews: some View {
        NumberList(contacts: Contact.generationContacts())
    }
}
