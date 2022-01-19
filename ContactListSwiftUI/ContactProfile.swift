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
            Label(
                contact.number,
                  systemImage: "phone.fill"
            )
            Label(
                contact.mail,
                  systemImage: "mail.fill"
            )
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactProfile_Previews: PreviewProvider {
    static var previews: some View {
        ContactProfile(contact: Contact.generationContact(id: 1))
    }
}
