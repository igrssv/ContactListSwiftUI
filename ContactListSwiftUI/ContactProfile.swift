//
//  ContactProfile.swift
//  ContactListSwiftUI
//
//  Created by Игорь Сысоев on 18.01.2022.
//

import SwiftUI

struct ContactProfile: View {
    let contact: Contact
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 120, height: 120)
                Spacer()
                
            }
            HStack {
                Image(systemName: "phone.fill")
                Text(contact.number)
            }
            HStack {
                Image(systemName: "mail.fill")
                Text(contact.mail)
            }
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactProfile_Previews: PreviewProvider {
    static var previews: some View {
        ContactProfile(contact: Contact.generationContact(id: 1))
    }
}
