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
        var contact = [Contact]()
        
        for i in 0...10 {
            contact.append(generationContact(id: i))
        }
        
        return contact
    }
    
    
    static func generationContact(id: Int) -> Contact {
        let names = ["Tony", "Harry", "Ron", "Stvien", "Ivan", "Sonya", "Vong", "Stas", "Jon", "Tim"].randomElement() ?? ""
        let lastNames = ["Cook", "Stark", "Potter", "Strange", "Perlman", "Blade", "Chan", "Asafiev", "Pim", "Groznyi"].randomElement()  ?? ""
        let fullName = names+lastNames
        let number = generationNumber()
        let mails = ["@gmail.com", "@live.com", "@ya.ru", "@mail.ru"].randomElement() ?? ""
        
   
        let contact = Contact(id: id, name: names , lastName: lastNames, number: number , mail: fullName+mails)
        
        return contact
        
    }
    
    static func generationNumber() -> String {
        guard let operatorNumber = [8999, 8927, 8977, 8966].randomElement() else { return ""}
        let numberPhone = "\(operatorNumber)" + "\(Int.random(in: 111111...999999))"
        
        return numberPhone
    }
    
    

    
    
}
