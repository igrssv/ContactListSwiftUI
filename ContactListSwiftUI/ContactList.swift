//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Игорь Сысоев on 10.01.2022.
//

import SwiftUI

struct ContactList: View {
    let contacts = Contact.generationContacts()
    
    var body: some View {
        VStack {
            List(contacts) { contact in
                HStack {
                    Text(contact.fullName)
                    Spacer()
                    Text ("\(contact.mail)")
                }
            }
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList()
    }
}
