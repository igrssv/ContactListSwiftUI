//
//  Contact.swift
//  ContactListSwiftUI
//
//  Created by Игорь Сысоев on 10.01.2022.
//

import Foundation


class Contact: Identifiable {
    var id: Int
    
    let name: String
    let lastName: String
    let number: String
    let mail: String
    
    var fullName: String {
        name + " " + lastName
    }
    
    init (id: Int, name: String, lastName: String, number: String, mail: String ) {
        self.id = id
        self.name = name
        self.lastName = lastName
        self.number = number
        self.mail = mail
    }
    
    static func generationContacts() -> [Contact] {
        var contacts: [Contact] = []
    
        for id in 0...10 {
            contacts.append(generationContact(id: id))
        }
        
        return contacts
    }
    
    static func generationContact(id: Int) -> Contact {
        let name = DataManager.shared.names.randomElement() ?? ""
        let lastName = DataManager.shared.lastNames.randomElement() ?? ""
        let fullName = name + lastName
        let operatorNumber = DataManager.shared.operatorNumber.randomElement() ?? ""
        let number = "\(DataManager.shared.number)"
        let mail = DataManager.shared.mails.randomElement() ?? ""
        
        let contact = Contact(
            id: id,
            name: name,
            lastName: lastName,
            number: operatorNumber + number,
            mail: fullName + mail
        )
    
        return  contact
    }
}
